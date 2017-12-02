package everyYeoga.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;

import everyYeoga.domain.TravelPlan;

import everyYeoga.domain.User;
import everyYeoga.service.TravelService;

@Controller
@RequestMapping("guide")
public class GuideController {

	@Autowired
	private TravelService travelService;

	@RequestMapping("registJoin.do") // registJoin.jsp
	public String registJoin(HttpServletRequest req, Join join, String travelPlanId) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		join.setGuideId(user.getId());
		travelService.registJoin(join, travelPlanId);

		return "guide/registJoin";
	}

	@RequestMapping("searchJoinDetail.do") // joinDetail.jsp
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

	public ModelAndView searchGuide(HttpServletRequest req, String travelPlanId) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		List<Join> j = travelService.searchGuide(travelPlanId);
		ModelAndView modelAndView = new ModelAndView("guide/chooseGuide");
		modelAndView.addObject("joinList", j);

		return modelAndView;
	}

	@RequestMapping(value = "registEvaluation.do", method = RequestMethod.GET)
	public String registEvaluation(HttpServletRequest req) {
		//진휘
		return "guide/registEvaluation";
	}

	@RequestMapping(value = "registEvaluation.do", method = RequestMethod.POST)
	public String registEvaluation(HttpServletRequest req, Evaluation evaluation) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		evaluation.setTravelerId(user.getId());
		travelService.registEvaluation(evaluation);
		return "travel/travelPlanList";
	}

	@RequestMapping("searchEvaluation.do") // joinDetail.jsp
	public ModelAndView searchEvaluation(HttpServletRequest req, String guideId) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");

		travelService.searchEvaluation(guideId);
		ModelAndView modelAndView = new ModelAndView("guide/joinDetail");
		modelAndView.addObject("guideId", guideId);

		return modelAndView;
	}

}
