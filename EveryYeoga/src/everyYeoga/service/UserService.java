package everyYeoga.service;

import everyYeoga.domain.User;

public interface UserService {
	public boolean registUser(User user);
	public User searchByUserId(String userId);
	public boolean modifyUser(String userId);
	public boolean removeUser(String userId);
	public User searchBlockedUser(String email);

}
