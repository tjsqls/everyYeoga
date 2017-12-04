 
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
	public String registGroup(String travelPlanId,HttpServletRequest req) {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		String[] guideIds = req.getParameterValues("check"); 
		List<String> userIds = new ArrayList<>();
		for(int i=0; i<guideIds.length; i++) {
			String guideId = guideIds[i];
			userIds.add(guideId);
			travelService.removeJoin(guideId, travelPlanId);
		}
		userIds.add(user.getId());
		
		groupService.registGroup(travelPlanId);
		groupService.registUserInGroup(travelPlanId, userIds);
		groupService.modifyGroupStatus(travelPlanId, "모집완료");
		
		return "redirect:/group/list.do?groupId="+travelPlanId;
	}

	@RequestMapping(value = "list.do")
	public String groupMain(HttpServletRequest req, String groupId, Model model) {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		List<Article> articles = groupService.searchAll(groupId);
		String travelerId = user.getId();
		Group group = groupService.retreiveJoiningGroup(travelerId, groupId);

		model.addAttribute("group", group);
		model.addAttribute("articles", articles);
		
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
}
