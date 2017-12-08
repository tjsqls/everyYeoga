package everyYeoga.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
		return "user/registUser";
	}

	@RequestMapping(value="regist.do", method = RequestMethod.POST)
	public String registUser(User user, HttpServletResponse response) {
		
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out;

		userService.registUser(user);
		
		try {
			out = response.getWriter();
            out.println("<script>alert('회원이 되신것을 환영 합니다!');</script>");
            out.flush();

		} catch (IOException e) {
			e.printStackTrace();
		}
		return "main";
	}

	@RequestMapping(value = "detail.do", method = RequestMethod.GET)
	public ModelAndView searchMyPage(HttpServletRequest req) {   // 마이페이지 누르면 회원정보 나옴
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		User user1 = userService.searchByUserId(user.getId());
		ModelAndView modelAndView = new ModelAndView("user/myPage");
		modelAndView.addObject("user", user1);
		
		return modelAndView;
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.GET)
	public ModelAndView showModifyPage(String userId) {  // 문서에는 get 과 post 로 안나눠져있음!
		
		User user = userService.searchByUserId(userId);
		
		ModelAndView modelAndView = new ModelAndView("user/modifyUser");
		modelAndView.addObject("user", user);
		
		return modelAndView;
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.POST)
	public ModelAndView modifyUser(User user) {   
		userService.modifyUser(user);
		User user1 = userService.searchByUserId(user.getId());
		ModelAndView modelAndView = new ModelAndView("user/myPage");
		modelAndView.addObject("user", user1);
		
		return modelAndView;
	}
	
	@RequestMapping("remove.do")
	public String removeUser(String userId) {
		userService.removeUser(userId);
		return "main";
	}

	@RequestMapping(value = "/login.do")
	public String showLogin(User user) {
		return "user/login";
	}

	@RequestMapping(value = "login.do", method=RequestMethod.POST)
	public String login(User user, HttpServletRequest req, HttpServletResponse response) {		
		
		String loginId = req.getParameter("id");
		String password = req.getParameter("pw");
		
		 response.setContentType("text/html; charset=UTF-8");
         PrintWriter out;
		
		if(userService.searchByUserId(loginId) == null) {			
		   
			try {
				out = response.getWriter();
	            out.println("<script>alert('존재하지않는 아이디 입니다.'); history.go(-1);</script>");
	            out.flush();

			} catch (IOException e) {
				e.printStackTrace();
			}
			return "user/login";
		}else if(userService.searchByUserId(loginId) != null){
			if (!password.equals(userService.searchByUserId(loginId).getPw())) {
				try {
					out = response.getWriter();
		            out.println("<script>alert('비밀번호를 확인 해주세요.'); history.go(-1);</script>");
		            out.flush();

				} catch (IOException e) {
					e.printStackTrace();
				}
			return "user/login";
			
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
			
		return "main";
	}

	@RequestMapping(value = "logout.do")
	public String logout(HttpServletRequest req) {

		HttpSession session = req.getSession();
		session.invalidate();
		return "main";
	}
	
	@RequestMapping(value="check.do")
	public @ResponseBody int idCheck(String inputId, Model model) {
		
		User user1 = userService.searchByUserId(inputId);
		
			if(user1 == null) {
				return 0;				
			}else {
				return 1;	
			}		
	}
}
