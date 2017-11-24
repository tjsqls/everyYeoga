package everyYeoga.service.logic;

import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.User;
import everyYeoga.service.UserService;
import everyYeoga.store.UserStore;
import everyYeoga.store.logic.UserStoreLogic;

@Service
public class UserServiceLogic implements UserService {
	
	@Autowired
	private UserStore userStore;

	@Override
	public boolean registUser(User user) {
		// 인애
//		User userCheck = userStore.retrieveBlockedUser(user.getEmail());   /* 가입이 막힌 user 인지 이메일 확인 후 가입 */
//		if (userCheck == null) {
//			return userStore.createUser(user);
//		}
		return false;
	}

	@Override
	public User searchByUserId(String userId) {
		// 인애
		return userStore.retrieveByUserId(userId);
	}

	@Override
	public boolean modifyUser(User user) {
		// 인애
		return userStore.updateUser(user);
	}

	@Override
	public boolean removeUser(String userId) {
		// 인애
		return userStore.deleteUser(userId);
	}

//searchBlockedUser
}
