package everyYeoga.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.service.SendEmailService;


@Controller
public class MailController {
    
	@Autowired
	private SendEmailService service;
	
	@RequestMapping("emailAuth.do")
	public ModelAndView emailAuth(HttpServletResponse response, HttpServletRequest request) throws Exception{
		
		String email = request.getParameter("email");
		String home = request.getParameter("selectMail");
		String authNum = "";
		String fullEmail = email + "@" + home;
		authNum = RandomNum();
		
		service.sendEmail(fullEmail, authNum);
		
		ModelAndView modelAndView = new ModelAndView("user/emailConfirm");
		modelAndView.addObject("email", fullEmail);
		modelAndView.addObject("authNum", authNum);
		return modelAndView;
	}
	
	public String RandomNum() {
		StringBuffer buffer = new StringBuffer();
		for(int i=0; i<=6; i++) {
			int n = (int)(Math.random()*10);
			buffer.append(n);
		}
		return buffer.toString();
	}
    }

