package everyYeoga.controller;

import java.net.PasswordAuthentication;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("email")
public class EmailController {
	
	
	
//public ModelAndView emailAuth(HttpServletResponse res, HttpServletRequest req) {
//	
//	String email = req.getParameter("eamil");
//	String authNum = "";
//	
////	authNum = RandomNum();
//	
//}
//
//private void sendEmail(String email, String authNum) {
//	String host = "smtp.gmail.com"; // smtp server
//	String subject = "모두의여가 인증번호 전달";
//	String fromName = "모두의여가 관리자";  // sender
//	String from = "esther0618@naver.com";
//	String to1 = email;
//	
//	String content = "인증번호 [" + authNum + "]";
//	
//	Properties props = new Properties();
//	props.put("mail.smtp.startls.enable", "true");
//	props.put("mail.transport.protocol", "smtp");
//	props.put("mail.smtp.host", host);
//	props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//	props.put("mail.smtp.port", "465");
//	props.put("mail.smtp.user", from);
//	props.put("mail.smtp.auth", "true");
//	
//	Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
//		protected PasswordAuthentication getPasswordAuthentication() {
//			
//			return new PasswordAuthentication("", "");
//		}
//		
//	});
//	
//}
//
//@Override
//public String randomNum() {
//	// TODO Auto-generated method stub
//	return null;
//}


}
