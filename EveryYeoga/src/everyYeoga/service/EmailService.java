package everyYeoga.service;

import org.apache.ibatis.annotations.Param;

public interface EmailService {


	public boolean send(String subject, String text, String from, String to);


}
