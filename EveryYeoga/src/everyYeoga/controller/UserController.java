package everyYeoga.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.User;
import everyYeoga.service.GroupService;
import everyYeoga.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {         // 인애

	@Autowired
	UserService userService;
	@Autowired
	GroupService groupService;

	@RequestMapping(value="regist.do", method = RequestMethod.GET)
	public String showRegistUser(User user) {
		return "redirect:registUser";
	}

	@RequestMapping(value="regist.do", method = RequestMethod.POST)
	public String registUser(User user) {

		boolean registed = userService.registUser(user);
		if (!registed) {
			return "redirect:login.do";
		}
		return "redirect:main";
	}

	@RequestMapping(value = "detail.do", method = RequestMethod.GET)
	public ModelAndView searchMyPage(HttpServletRequest req) {   // 마이페이지 누르면 회원정보 나옴
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		User user1 = userService.searchByUserId(user.getId());
		ModelAndView modelAndView = new ModelAndView("/user/myPage");
		modelAndView.addObject("user", user1);
		
		return modelAndView;
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.GET)
	public ModelAndView showModifyPage(String userId) {  // 문서에는 get 과 post 로 안나눠져있음!
		
		User user = userService.searchByUserId(userId);
		
		ModelAndView modelAndView = new ModelAndView("/user/createUser");
		modelAndView.addObject("user", user);
		
		return modelAndView;
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.POST)
	public ModelAndView modifyUser(User user) {   
		userService.modifyUser(user);
		User user1 = userService.searchByUserId(user.getId());
		ModelAndView modelAndView = new ModelAndView("/user/myPage");
		modelAndView.addObject("user", user1);
		
		return modelAndView;
	}
	
	@RequestMapping("remove.do")
	public String removeUser(String userId) {
		userService.removeUser(userId);
		return "redirect:/user/login.do";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String showLogin(User user) {
		return "user/login";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(User user, HttpServletRequest req) {
		
		User loginedUser = userService.login(user);
		
		if(loginedUser != null) {
			HttpSession session = req.getSession();
			session.setAttribute("loginedUser", loginedUser);
		}else {
			HttpSession session = req.getSession();
			session.invalidate();
		}
		return "travel/travelPlanList";

	}

	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest req) {

		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:login.do";
	}
}
