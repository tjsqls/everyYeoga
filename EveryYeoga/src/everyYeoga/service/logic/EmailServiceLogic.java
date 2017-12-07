package everyYeoga.service.logic;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import everyYeoga.service.EmailService;
@Service
public class EmailServiceLogic implements EmailService{

	private JavaMailSender javaMailSender;
	
	public void setJavaMailSender(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}
	
	@Override
	public boolean send(String subject, String text, String from, String to) {

MimeMessage message = javaMailSender.createMimeMessage();

try {
	MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
	helper.setSubject(subject);
	helper.setText(text, true);
	helper.setFrom(from);
	helper.setTo(to);
	
	javaMailSender.send(message);
	return true;
	
} catch (MessagingException e) {
	e.printStackTrace();
}
		return false;
	}
}