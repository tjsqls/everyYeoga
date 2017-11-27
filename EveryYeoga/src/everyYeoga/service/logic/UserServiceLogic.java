package everyYeoga.service.logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.User;
import everyYeoga.service.UserService;
import everyYeoga.store.UserStore;


@Service
public class UserServiceLogic implements UserService {
	
	@Autowired
	private UserStore userStore;	

	@Override
	public boolean registUser(User user) {
		// 인애
		User userCheck = userStore.retrieveBlockedUser(user.getEmail());   /* 가입이 막힌 user 인지 이메일 확인 후 가입 */
		if (userCheck == null) {
			return userStore.createUser(user);
		}else{
			throw new RuntimeException("가입 하실수 없습니다.");
		}
	}
	
	@Override
	public User login(User user) {
		//선빈
		User readedUser = null;
		if (validate(user)) {
			readedUser = userStore.retrieveByUserId(user.getId());
		}
		return readedUser;
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
	
	private boolean validate(User user) {
		//선빈
		if (user == null) {
			throw new RuntimeException("사용자 정보가 없습니다.");
		} else if (user.getId() == null || user.getId().isEmpty()) {
			throw new RuntimeException("ID가 없습니다.");
		} else if (user.getPw() == null || user.getPw().isEmpty()) {
			throw new RuntimeException("비밀번호가 없습니다.");
		}
		return true;
	}
}
