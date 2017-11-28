package everyYeoga.store;

import java.util.Date;

import everyYeoga.domain.User;

public interface UserStore {
	public boolean createUser(User user); 
	public User retrieveByUserId(String userId);
	public boolean updateUser(User user); // 파라미터 수정 String userId -> User user 선빈
	public boolean deleteUser(String userId);
	public User retrieveBlockedUser(String email); //2017.11.25 메소드 추가 선빈
	public boolean BlockedUser(User user);//2017.11.25 메소드 추가 선빈
	public boolean updateBlockedNumber(String userId); // 2017.11.27 인애 추가   ---> 정지횟수 1증가
	public boolean updateReportedNumber(String userId); // 2017.11.27 인애 추가  --> 신고횟수 1 증가
	public String countBlockedNumber(String userId);    // 2017.11.27 인애 추가  
	public String countReportedNumber(String userId);   // 2017.11.27 인애 추가  
	public String retrieveAcessBlockedDate(String userId);   // 2017.11.28 인애 추가  
	public boolean updateAccessBlockedDate(String userId);  // 2017.11.28 인애 추가  
	public boolean deleteAccessBlockedDate(String userId);  // 2017.11.28 인애 추가  

	
	
}
