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

@Controller
@RequestMapping("travel")
public class TravelController {
	// 진휘

	@Autowired
	private TravelService travelService;

	@RequestMapping(value = "regist.do") // createTravelPlan.jsp
	public String registTravelPlan(HttpServletRequest req, TravelPlan travelPlan) {// 2017.11.27 HttpServletRequest 추가
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");

		travelPlan.setTraveler(user);

		travelService.registTravelPlan(travelPlan);
		return "travel/travelPlanList";
	}

	
//test해야함	
	@RequestMapping(value="modify.do", method = RequestMethod.GET)
	public String modifyTravelPlan(String travelPlanId, Model model) {
		TravelPlan travelPlan = travelService.searchTravelPlan(travelPlanId);
		
		model.addAttribute("travelPlan", travelPlan);
		return "travel/myTravelPlanModify";
	}
//test해야함
	@RequestMapping(value = "modify.do", method=RequestMethod.POST) // myTravelPlan.jsp
	public String modifyTravelPlan(TravelPlan travelPlan) {//수정
		travelService.modifyTravelPlan(travelPlan);
		
		return "travel/searchTravelPlan"; // --> 처리해야한다.(searchTravelPlan으루)
	}
	
	@RequestMapping(value="search.do")
	public String searchTravelPlanByUserId(HttpServletRequest req, Model model){
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");

		TravelPlan travelPlan = travelService.searchTravelPlanByUserId(user.getId());
		model.addAttribute(travelPlan);
		return "travel/myTravelPlan";
	}

	@RequestMapping(value="travelPlanList.do")
	public String searchAllTravelPlans(Model model){
		
		List<TravelPlan> list = travelService.searchAllTravelPlans();
		
		model.addAttribute(list);
		return "travel/myTravelPlan";
	}
	
	

	@RequestMapping(value = "remove.do") // myTravelPlan.jsp
	public String removeTravelPlan(String travelPlanId) {
		travelService.removeTravelPlan(travelPlanId);
		return "redirect:travel/myTravelPlan";
	}

	@RequestMapping(value = "searchTravelPlan.do") // travelPlanList.jsp
	public ModelAndView searchTravelPlan(String travelArea, String speakingAbility, String startDate) {
		List<TravelPlan> list = travelService.searchTravelPlansByTravelPlan(travelArea, speakingAbility, startDate);
		ModelAndView modelAndView = new ModelAndView("travelPlanList.jsp");
		modelAndView.addObject("list", list);
		
		return modelAndView;
	}

}
