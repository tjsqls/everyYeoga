 
package everyYeoga.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import everyYeoga.domain.Article;
import everyYeoga.domain.Group;
import everyYeoga.domain.Join;
import everyYeoga.domain.TravelPlan;
import everyYeoga.domain.User;
import everyYeoga.service.GroupService;
import everyYeoga.service.TravelService;

@Controller
@RequestMapping("group")
public class GroupController {

	@Autowired
	GroupService groupService;
	@Autowired
	TravelService travelService;
	
	 
	@RequestMapping(value = "regist.do", method = RequestMethod.POST)
	public String registGroup(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String travelPlanId = req.getParameter("travelPlanId");
		System.out.println(travelPlanId);
		User user = (User) session.getAttribute("loginedUser");
		String[] guideIds = req.getParameterValues("check"); 
		List<String> userIds = new ArrayList<>();
		for(int i=0; i<guideIds.length; i++) {
			String guideId = guideIds[i];
			userIds.add(guideId);
			travelService.removeJoin(guideId, travelPlanId);
		}
		if(groupService.retreiveJoiningGroup(user.getId(), travelPlanId)==null) {
		groupService.registGroup(travelPlanId);
		userIds.add(user.getId());
		groupService.registUserInGroup(travelPlanId, userIds);
		groupService.modifyGroupStatus(travelPlanId, "모집완료");
		}else {
		groupService.registUserInGroup(travelPlanId, userIds);
		groupService.modifyGroupStatus(travelPlanId, "모집완료");
		}
		return "redirect:/group/list.do?groupId="+travelPlanId;
	}

	@RequestMapping(value = "list.do", method=RequestMethod.GET)
	public String groupMain(HttpServletRequest req, String groupId, Model model) {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		List<Article> articles = groupService.searchAll(groupId);
		String travelerId = user.getId();
		Group group = groupService.retreiveJoiningGroup(travelerId, groupId);
		TravelPlan travelPlan = travelService.searchTravelPlan(groupId);
		String gatheringStatus = travelPlan.getGatheringStatus();
		String travelUserId = travelPlan.getTravelerId();
		model.addAttribute("gatheringStatus", gatheringStatus);
		model.addAttribute("group", group);
		model.addAttribute("travelUserId", travelUserId);
		model.addAttribute("articles", articles);
		model.addAttribute("traveler", group.getTraveler());
		model.addAttribute("guides", group.getGuides());
		return "group/groupMain";
	}

	@RequestMapping(value = "groupModifyStatus.do")
	public String modifyGroupStatus(String travelPlanId, HttpServletRequest req, Model model) {

		groupService.modifyGroupStatus(travelPlanId, "모집중");

		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		List<Article> articles = groupService.searchAll(travelPlanId);
		TravelPlan travelPlan = travelService.searchTravelPlan(travelPlanId);
		String travelerId = user.getId();
		Group group = groupService.retreiveJoiningGroup(travelerId, travelPlanId);
		
		model.addAttribute("gatheringStatus", travelPlan.getGatheringStatus());
		model.addAttribute("group", group);
		model.addAttribute("articles", articles);
		return "redirect:/group/list.do?groupId="+travelPlanId;
	}
	
	@RequestMapping(value="groupList.do", method=RequestMethod.GET)
	public String joiningGroup(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		List<Group> group = groupService.retrieveJoiningGroupAll(user.getId());
		model.addAttribute("groups", group);
		return "group/joiningGroupList";
	}
	
	@RequestMapping(value="groupOut.do", method=RequestMethod.GET)
	public String groupOut(HttpServletRequest req, String groupId) {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		groupService.groupOut(groupId, user.getId());
		return "redirect:/group/groupList.do";
	}
	@RequestMapping(value="removeGroup.do", method=RequestMethod.GET)
	public String removeGroup(HttpServletRequest req, String groupId) {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		if(travelService.searchTravelPlan(groupId).getTravelerId().equals(user.getId())) {
		groupService.removeGroup(user.getId(), groupId);
		
		return "redirect:/guide/registEvaluation.do?groupId="+groupId;
		}
		else {
			groupService.removeGroup(user.getId(), groupId);
		}
		return "redirect:/group/groupList.do";
	}
}
