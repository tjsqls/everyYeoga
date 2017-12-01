package everyYeoga.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;
import everyYeoga.domain.User;
import everyYeoga.service.TravelService;

@Controller
@RequestMapping("guide")
public class GuideController {


	@Autowired
	private TravelService travelService;
	
	@RequestMapping("registJoin.do")//registJoin.jsp
	public String registJoin(HttpServletRequest req,Join join, String travelPlanId) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		
		travelService.registJoin(join, travelPlanId);
		
		return "guide/registJoin";
	}
	
	@RequestMapping("searchJoinDetail.do")//joinDetail.jsp
	public ModelAndView searchjoinDetail(HttpServletRequest req,String joinId) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		ModelAndView modelAndView = new ModelAndView("joinDetail.jsp");
		modelAndView.addObject("joinId", joinId);
		
		
		return modelAndView;
	}
	
	@RequestMapping("searchGuide.do")//chooseGuide.jsp
	public ModelAndView searchGuide(HttpServletRequest req,String travelPlanId) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		travelService.searchGuide(travelPlanId);
		ModelAndView modelAndView = new ModelAndView("chooseGuide.jsp");
		modelAndView.addObject("travelPlanId", travelPlanId);
		 
		
		
		return modelAndView;
	}
	
	@RequestMapping("registEvaluation.do")//registEvaluation.jsp
	public String registEvaluation(HttpServletRequest req,Evaluation evaluation) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		travelService.registEvaluation(evaluation);
		return "guide/registEvaluation";
	}
	
	@RequestMapping("searchEvaluation.do")//joinDetail.jsp
	public ModelAndView searchEvaluation(HttpServletRequest req,String guideId) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		
		travelService.searchEvaluation(guideId);
		ModelAndView modelAndView = new ModelAndView("joinDetail.jsp");
		modelAndView.addObject("guideId", guideId);
		
		
		return modelAndView;
	}
	
	
	



}