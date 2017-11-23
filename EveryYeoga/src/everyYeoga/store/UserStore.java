package everyYeoga.store;

import everyYeoga.domain.User;

public interface UserStore {
	public boolean createUser(User user); 
	public User retrieveByUserId(String userId);
	public boolean updateUser(User user); // 파라미터 수정 String userId -> User user 선빈
	public boolean deleteUser(String UserId);
	public User retrieveBlockedUser(String email);
	public boolean BlockedUser(User user);

}
