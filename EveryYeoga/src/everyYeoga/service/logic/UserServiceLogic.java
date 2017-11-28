package everyYeoga.service.logic;

import java.util.Calendar;
import java.util.Date;

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
		User userCheck = userStore.retrieveBlockedUser(user.getEmail()); /* 가입이 막힌 user 인지 이메일 확인 후 가입 */
		if (userCheck == null) {
			return userStore.createUser(user);
		} else {
			throw new RuntimeException("가입 하실수 없습니다.");
		}
	}

	public User login(User user) {
		// 선빈 + 11.28 인애 30일 정지 일때 로그인 금지 추가
		User readedUser = null;
		Date today = new Date(Calendar.getInstance().getTimeInMillis());

		if (validate(user)) {
			readedUser = userStore.retrieveByUserId(user.getId());

			// user 의 로그인 금지 일 + 30일 = 오늘 날짜
			if (((userStore.retrieveAcessBlockedDate(readedUser.getId()) + 30).toString()).equals(today.toString())) {
				return readedUser;
			}
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
		// 선빈
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
