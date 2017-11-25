package everyYeoga.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.User;
import everyYeoga.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping("regist.do")
	public String showRegistUser(User user) {
		return "redirect:registUser";
	}

	@RequestMapping(value = "regist.do", method = RequestMethod.POST)
	public String registUser(User user) {

		boolean registed = userService.registUser(user);
		if (!registed) {
			return "redirect:login.do";
		}
		return "redirect:main";
	}

	@RequestMapping("detail.do")
	public ModelAndView searchMyPage(HttpServletRequest req) {   // 마이페이지 누르면 회원정보 나옴
		
		HttpSession session = req.getSession();
		User user = userService.searchByUserId(session.getId());
		
		ModelAndView modelAndView = new ModelAndView("myPage");
		modelAndView.addObject("user", user);
		
		return modelAndView;
	}

	@RequestMapping("modify.do")
	public String modifyUser(HttpServletRequest req) {   // 2017.11.25 파라미터 User user 에서 req 로 변경

		HttpSession session = req.getSession();
		User user = userService.searchByUserId(session.getId());
		
		userService.modifyUser(user);
		return "redirect:myPage";
	}
	
	
	@RequestMapping(value="modify.do", method=RequestMethod.POST)
	public ModelAndView showModifyPage(User user) {  // 문서에는 get 과 post 로 안나눠져있음!
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("modifyUser");
		
		return modelAndView;
	}

	@RequestMapping("remove.do")
	public String removeUser(String userId) {
		userService.removeUser(userId);
		return "redirect:login";
	}

	@RequestMapping("login.do")
	public String showLogin(User user) {
		return "redirect:login";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(User user, HttpServletRequest req) {
		
//		User loginedUser = userService.
//		
//		if(loginedUser != null) {
//			HttpSession session = req.getSession();
//			session.setAttribute("loginedUser", loginedUser);
//		}else {
//			HttpSession session = req.getSession();
//			session.invalidate();
//		}
		return "redirect:main";

	}

	@RequestMapping("logout.do")
	public String logout(HttpServletRequest req) {

		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:login.do";
	}

	@RequestMapping("")
	public String searchBlockedUser(User user) {

		return "";
	}

}
