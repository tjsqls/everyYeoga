package everyYeoga.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import everyYeoga.domain.Article;
import everyYeoga.domain.Group;
import everyYeoga.domain.User;
import everyYeoga.service.GroupService;

@Controller
@RequestMapping("group")
public class GroupController {
	
	@Autowired
	GroupService groupService;
	
	@RequestMapping(value="regist.do", method=RequestMethod.POST)
	public String registGroup(String travelPlanId, List<String> guideId, HttpServletRequest req) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		List<String> userIds = guideId;
		userIds.add(user.getId());
		groupService.registGroup(travelPlanId);
		groupService.registUserInGroup(travelPlanId, userIds);
		groupService.modifyGroupStatus(travelPlanId, "모집완료");
		return "group/groupMain";
	}
	
	@RequestMapping(value="list.do")
	public String groupMain(HttpServletRequest req,String groupId, Model model) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		List<Article> articles = groupService.searchAll(groupId);
		String travelerId = user.getId();
		Group group = groupService.retreiveJoiningGroup(travelerId, groupId);
		
		model.addAttribute("group", group);
		model.addAttribute("articles", articles);
		return "group/groupMain";
	}
	
	@RequestMapping(value="groupModifyStatus")
	public String modifyGroupStatus(String travelPlanId, HttpServletRequest req, Model model) {
		
		groupService.modifyGroupStatus(travelPlanId, "모집중");
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		List<Article> articles = groupService.searchAll(travelPlanId);
		String travelerId = user.getId();
		Group group = groupService.retreiveJoiningGroup(travelerId, travelPlanId);
		
		model.addAttribute("group", group);
		model.addAttribute("articles", articles);
		return "group/list.do";
	}
}
