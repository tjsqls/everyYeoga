package everyYeoga.service.logic;

import org.springframework.stereotype.Service;

import everyYeoga.domain.User;
import everyYeoga.service.UserService;

@Service
public class UserServiceLogic implements UserService {

	@Override
	public boolean registUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User searchByUserId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modifyUser(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeUser(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User searchBlockedUser(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
