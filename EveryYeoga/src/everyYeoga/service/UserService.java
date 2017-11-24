package everyYeoga.service;

import java.util.Date;

import everyYeoga.domain.User;

public interface UserService {
	public boolean registUser(User user);
	public User searchByUserId(String userId);
	public boolean modifyUser(User user); // ---인애--> String userId 에서 User user 로 파라미터 변경
	public boolean removeUser(String userId);

}
