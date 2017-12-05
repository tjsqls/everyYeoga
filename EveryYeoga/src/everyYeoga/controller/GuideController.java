package everyYeoga.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.EvaluationList;
import everyYeoga.domain.Join;
import everyYeoga.domain.TravelPlan;
import everyYeoga.domain.User;
import everyYeoga.service.GroupService;
import everyYeoga.service.TravelService;

@Controller
@RequestMapping("guide")
public class GuideController {

	@Autowired
	private TravelService travelService;
	@Autowired
	private GroupService groupService;

	@RequestMapping(value="registJoin.do", method=RequestMethod.GET) // registJoin.jsp
	public String registJoin(String travelPlanId, Model model) {
		//진휘
		model.addAttribute("travelPlanId", travelPlanId);
		return "guide/registJoin";
	}
	@RequestMapping(value="registJoin.do", method=RequestMethod.POST) // registJoin.jsp
	public String registJoin(HttpServletRequest req, Join join) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		join.setGuideId(user.getId());
		travelService.registJoin(join);
		

		return "redirect:/travel/searchTravelPlan.do";
	}

	@RequestMapping(value="searchJoinDetail.do", method=RequestMethod.GET) // joinDetail.jsp
	public ModelAndView searchjoinDetail(HttpServletRequest req, String joinId) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		Join join = travelService.searchJoinDetail(joinId);
		ModelAndView modelAndView = new ModelAndView("guide/joinDetail");
		modelAndView.addObject("join", join);

		return modelAndView;
	}

	@RequestMapping(value="searchGuide.do", method = RequestMethod.GET) // chooseGuide.jsp
	public ModelAndView searchGuide(HttpServletRequest req, int travelPlanId) {
		//진휘
		int a = travelPlanId;
		String b = Integer.toString(a);
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		List<Join> j = travelService.searchGuide(b);

		ModelAndView modelAndView = new ModelAndView("guide/chooseGuide");
		modelAndView.addObject("joinList", j);
		return modelAndView;
	}

	@RequestMapping(value = "registEvaluation.do", method = RequestMethod.GET)
	public String registEvaluation(HttpServletRequest req, String groupId, Model model) {
		//진휘
		List<String> userIds = groupService.searchJoiningUserId(groupId);
		List<String> guideIds = new ArrayList<>();
		for(int i=0; i<userIds.size(); i++) {
			if(!travelService.searchTravelPlan(groupId).getTravelerId().equals(userIds.get(i))) {
			String guideId = userIds.get(i);
			guideIds.add(guideId);
			}
		}
		model.addAttribute("guideIds", guideIds);
		return "guide/registEvaluation";
	}

	@RequestMapping(value = "registEvaluation.do", method = RequestMethod.POST)
	public String registEvaluation(HttpServletRequest req, EvaluationList list) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		for(int i=0; i<list.getList().size(); i++) {
		list.getList().get(i).setTravelerId(user.getId());
		travelService.registEvaluation(list.getList().get(i));
		}
		return "travel/travelPlanList";
	}

	@RequestMapping("searchEvaluation.do") // joinDetail.jsp
	public ModelAndView searchEvaluation(HttpServletRequest req, String guideId) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		List<Evaluation> evaluation = travelService.searchEvaluation(guideId);
		ModelAndView modelAndView = new ModelAndView("guide/joinDetail");
		modelAndView.addObject("evaluation", evaluation);

		return modelAndView;
	}

}
