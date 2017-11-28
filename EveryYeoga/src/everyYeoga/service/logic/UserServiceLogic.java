package everyYeoga.service.logic;

import java.text.SimpleDateFormat;
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
		// 선빈
		// 인애   30일 정지 일때 로그인 금지 추가 11/28
		User readedUser = null;

		if (validate(user)) {
			readedUser = userStore.retrieveByUserId(user.getId());

			SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd");
			Date blocked = userStore.retrieveAccessBlockedDate(readedUser.getId()); // 정지 된 날짜

			if (blocked != null) {

				String blockedDate = sdf.format(blocked);
				
				/*  --- 이용 정지일로 부터 30일 추출 --- */
				Calendar cal = Calendar.getInstance();
				cal.setTime(blocked);
				cal.add(Calendar.DATE, 30); 

				Date plusDate = new Date(cal.getTimeInMillis());
				String accessEndDate = sdf.format(plusDate);
				/*  -------------------------- */

				Date d = new Date(Calendar.getInstance().getTimeInMillis()); // 오늘의 날짜
				String today = sdf.format(d);

				// user 의 로그인 금지 풀리는날 = 오늘 날짜 or 풀리는날이 오늘이 넘어갓다면
				if (accessEndDate.equals(today) || plusDate.after(d)) {
					userStore.deleteAccessBlockedDate(readedUser.getId());
					return readedUser;
				} else if (!accessEndDate.equals(today) || plusDate.before(d)) {
					throw new RuntimeException("이용 정지 상태입니다.");
					// 접속 가능한날은 "xxx" 입니다. << 출력하려면 accessEndDate 를 하면 뎀 
				}
			} else {
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
			throw new RuntimeException("사용자가 존재하지 않습니다.");
		} else if (user.getId() == null || user.getId().isEmpty()) {
			throw new RuntimeException("ID가 존재하지 않습니다.");
		} else if (user.getPw() == null || user.getPw().isEmpty()) {
			throw new RuntimeException("비밀번호가 잘못되었습니다.");
		}
		return true;
	}

}
