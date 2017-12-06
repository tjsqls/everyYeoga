package everyYeoga.controller.english;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
@RequestMapping("enguser")
public class UserControllerEng {         // 인애

	@Autowired
	UserService userService;
	@Autowired
	GroupService groupService;

	@RequestMapping(value="regist.do", method = RequestMethod.GET)
	public String showRegistUser(User user) {
		return "user/registUser_Eng";
	}

	@RequestMapping(value="regist.do", method = RequestMethod.POST)
	public String registUser(User user) {

		boolean registed = userService.registUser(user);
		if (!registed) {
			return "redirect:enguser/login.do";
		}
		return "main_Eng";
	}

	@RequestMapping(value = "detail.do", method = RequestMethod.GET)
	public ModelAndView searchMyPage(HttpServletRequest req) {   // 마이페이지 누르면 회원정보 나옴
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		User user1 = userService.searchByUserId(user.getId());
		ModelAndView modelAndView = new ModelAndView("user/myPage_Eng");
		modelAndView.addObject("user", user1);
		
		return modelAndView;
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.GET)
	public ModelAndView showModifyPage(String userId) {  // 문서에는 get 과 post 로 안나눠져있음!
		
		User user = userService.searchByUserId(userId);
		
		ModelAndView modelAndView = new ModelAndView("user/modifyUser_Eng");
		modelAndView.addObject("user", user);
		
		return modelAndView;
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.POST)
	public ModelAndView modifyUser(User user) {   
		userService.modifyUser(user);
		User user1 = userService.searchByUserId(user.getId());
		ModelAndView modelAndView = new ModelAndView("user/myPage_Eng");
		modelAndView.addObject("user", user1);
		
		return modelAndView;
	}
	
	@RequestMapping("remove.do")
	public String removeUser(String userId) {
		userService.removeUser(userId);
		return "redirect:enguser/login.do";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String showLogin(User user) {
		return "user/login_Eng";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(User user, HttpServletRequest req, HttpServletResponse response) {		
		
		String loginId = req.getParameter("id");
		String password = req.getParameter("pw");
		
		 response.setContentType("text/html; charset=UTF-8");
         PrintWriter out;
		
		if(userService.searchByUserId(loginId) == null) {			
		   
			try {
				out = response.getWriter();
	            out.println("<script>alert('Inputted ID doesn't exist.'); history.go(-1);</script>");
	            out.flush();

			} catch (IOException e) {
				e.printStackTrace();
			}
			return "user/login_Eng";
		}else if(userService.searchByUserId(loginId) != null){
			if (!password.equals(userService.searchByUserId(loginId).getPw())) {
				try {
					out = response.getWriter();
		            out.println("<script>alert('Please check your password.'); history.go(-1);</script>");
		            out.flush();

				} catch (IOException e) {
					e.printStackTrace();
				}
			return "user/login_Eng";
			
		}
		
			User loginedUser = userService.login(user);
			
			if (loginedUser != null) {
				HttpSession session = req.getSession();
				session.setAttribute("loginedUser", loginedUser);
			} else {
				HttpSession session = req.getSession();
				session.invalidate();
			}
		}
			
		return "main_Eng";
	}

	@RequestMapping(value = "logout.do")
	public String logout(HttpServletRequest req) {

		HttpSession session = req.getSession();
		session.invalidate();
		return "user/login_Eng";
	}
}
