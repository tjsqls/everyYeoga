package everyYeoga.controller.english;


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
@RequestMapping("engtravel")
public class TravelControllerEng {
	// 진휘

	@Autowired
	private TravelService travelService;
	@Autowired
	private UserService userService;

	@RequestMapping(value = "regist.do", method = RequestMethod.GET) // createTravelPlan.jsp
	public String registTravelPlan(HttpServletRequest req, Model model) {// 2017.11.27 HttpServletRequest 추가
		// 진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		if (travelService.searchTravelPlanByUserId(user.getId()) != null) {
			
			 model.addAttribute("message", "종료하지 않은 모임이 있습니다. 모임종료를 눌러주세요.");
			 model.addAttribute("returnUrl", "http://localhost:8080/EveryYeoga/enggroup/groupList.do");
			return "travel/teeemp";
			}
		
		else {
			return "travel/createTravelPlan_Eng";
		}
		
	}

	@RequestMapping(value = "regist.do", method = RequestMethod.POST) // createTravelPlan.jsp
	public String registTravelPlan(HttpServletRequest req, TravelPlan travelPlan) {// 2017.11.27 HttpServletRequest 추가
		// 진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		travelPlan.setTravelerId(user.getId());
		
		travelService.registTravelPlan(travelPlan);
		return "redirect:/engtravel/myTravelPlan.do";
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.GET)
	public String modifyTravelPlan(HttpServletRequest req) {
		// 진휘

		return "travel/myTravelPlanModify_Eng";
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.POST) // myTravelPlan.jsp
	public String modifyTravelPlan(HttpServletRequest req, TravelPlan travelPlan) {// 수정
		// 진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		travelPlan.setTravelerId(user.getId());
		travelService.modifyTravelPlan(travelPlan);

		return "travel/myTravelPlanList_Eng"; // --> 처리해야한다.(searchTravelPlan으루)
	}

	@RequestMapping(value = "myTravelPlan.do", method = RequestMethod.GET)
	public String searchTravelPlanByUserId(HttpServletRequest req, Model model) {
		// 진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");

		TravelPlan travelPlan = travelService.searchTravelPlanByUserId(user.getId());
		model.addAttribute("travelPlan", travelPlan);
		return "travel/myTravelPlan_Eng";
	}

	@RequestMapping(value = "travelPlanList.do")
	public String searchAllTravelPlans(HttpServletRequest req, Model model) {
		// 진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		List<TravelPlan> list = travelService.searchAllTravelPlans();

		model.addAttribute(list);
		return "travel/travelPlanList_Eng";
	}

	@RequestMapping(value = "remove.do") // myTravelPlan.jsp
	public String removeTravelPlan(String travelPlanId) {
		// 진휘
		travelService.removeTravelPlan(travelPlanId);
		return "redirect:engtravel/myTravelPlan";
	}

	@RequestMapping(value = "searchTravelPlan.do", method = RequestMethod.POST) // travelPlanList.jsp
	public ModelAndView searchTravelPlan(HttpServletRequest req, String travelArea, String speakingAbility,
			String startDate) {
		// 진휘
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");

		List<TravelPlan> list = travelService.searchTravelPlansByTravelPlan(travelArea, speakingAbility, startDate);
		ModelAndView modelAndView = new ModelAndView("travel/travelPlanList_Eng");
		modelAndView.addObject("list", list);

		return modelAndView;
	}

	@RequestMapping(value = "searchTravelPlan.do", method = RequestMethod.GET)
	public ModelAndView searchTravelPlan() {

		ModelAndView modelAndView = new ModelAndView("travel/travelPlanList_Eng");

		return modelAndView;

	}

}
