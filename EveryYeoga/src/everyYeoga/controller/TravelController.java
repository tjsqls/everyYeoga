package everyYeoga.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.TravelPlan;
import everyYeoga.domain.User;
import everyYeoga.service.TravelService;
import everyYeoga.service.UserService;

@Controller
@RequestMapping("travel")
public class TravelController {
	// 진휘

	@Autowired
	private TravelService travelService;
	@Autowired
	private UserService userService;

	@RequestMapping(value = "regist.do", method=RequestMethod.GET) // createTravelPlan.jsp
	public String registTravelPlan() {// 2017.11.27 HttpServletRequest 추가
		//진휘
		return "travel/createTravelPlan";
	}
	@RequestMapping(value = "regist.do", method=RequestMethod.POST) // createTravelPlan.jsp
	public String registTravelPlan(HttpServletRequest req, TravelPlan travelPlan) {// 2017.11.27 HttpServletRequest 추가
		//진휘
		System.out.println(travelPlan.getStartDate());
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		travelPlan.setTravelerId(user.getId());

		travelService.registTravelPlan(travelPlan);
		return "redirect:/travel/myTravelPlan.do";
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.GET)
	public String modifyTravelPlan(HttpServletRequest req) {
		//진휘

		return "travel/myTravelPlanModify";
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.POST) // myTravelPlan.jsp
	public String modifyTravelPlan(HttpServletRequest req,TravelPlan travelPlan) {// 수정
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		travelPlan.setTravelerId(user.getId());
		travelService.modifyTravelPlan(travelPlan);

		return "travel/myTravelPlanList"; // --> 처리해야한다.(searchTravelPlan으루)
	}

	@RequestMapping(value = "myTravelPlan.do", method=RequestMethod.GET)
	public String searchTravelPlanByUserId(HttpServletRequest req, Model model) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		
		TravelPlan travelPlan = travelService.searchTravelPlanByUserId(user.getId());
		model.addAttribute("travelPlan", travelPlan);
		return "travel/myTravelPlan";
	}

	@RequestMapping(value = "travelPlanList.do")
	public String searchAllTravelPlans(HttpServletRequest req, Model model) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		List<TravelPlan> list = travelService.searchAllTravelPlans();

		model.addAttribute(list);
		return "travel/travelPlanList";
	}

	@RequestMapping(value = "remove.do") // myTravelPlan.jsp
	public String removeTravelPlan(String travelPlanId) {
		//진휘
		travelService.removeTravelPlan(travelPlanId);
		return "redirect:travel/myTravelPlan";
	}

	@RequestMapping(value = "searchTravelPlan.do", method=RequestMethod.POST) // travelPlanList.jsp
	public ModelAndView searchTravelPlan(HttpServletRequest req, String travelArea, String speakingAbility,
			String startDate) {
		//진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		
		List<TravelPlan> list = travelService.searchTravelPlansByTravelPlan(travelArea, speakingAbility, startDate);
		ModelAndView modelAndView = new ModelAndView("travel/travelPlanList");
		modelAndView.addObject("list", list);
		
		return modelAndView;
	}
	@RequestMapping(value = "searchTravelPlan.do", method=RequestMethod.GET)
	public ModelAndView searchTravelPlan() {
		
		ModelAndView modelAndView = new ModelAndView("travel/travelPlanList");
		
		return modelAndView;
		
	}
	
	

}
