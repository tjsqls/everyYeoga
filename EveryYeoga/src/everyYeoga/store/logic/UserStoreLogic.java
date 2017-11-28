package everyYeoga.store.logic;

import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import everyYeoga.domain.User;
import everyYeoga.store.UserStore;
import everyYeoga.store.factory.EveryYeogaSqlSessionFactory;
import everyYeoga.store.mapper.UserMapper;

@Repository
public class UserStoreLogic implements UserStore {

	@Override
	public boolean createUser(User user) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.createUser(user);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public User retrieveByUserId(String userId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		User user = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			user = mapper.retrieveByUserId(userId);
		} finally {
			session.close();
		}
		return user;
	}

	@Override
	public boolean updateUser(User user) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.updateUser(user);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean deleteUser(String userId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.deleteUser(userId);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public User retrieveBlockedUser(String email) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		User user = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			user = mapper.retrieveBlockedUser(email);

		} finally {
			session.close();
		}
		return user;
	}

	@Override
	public boolean BlockedUser(User user) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.BlockedUser(user);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean updateBlockedNumber(String userId) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.updateBlockedNumber(userId);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean updateReportedNumber(String userId) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.updateReportedNumber(userId);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public String countBlockedNumber(String userId) {
		// 인애
		String temp = null;
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			temp = mapper.countBlockedNumber(userId);
			session.commit();
		} finally {
			session.close();
		}
		return temp;
	}

	@Override
	public String countReportedNumber(String userId) {
		// 인애
		String temp = null;
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			temp = mapper.countReportedNumber(userId);
			session.commit();
		} finally {
			session.close();
		}
		return temp;
	}

	@Override
	public Date retrieveAccessBlockedDate(String userId) {
		// 인애
		Date temp = null;
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			temp = mapper.retrieveAccessBlockedDate(userId);
			session.commit();
		} finally {
			session.close();
		}
		return temp;
	}

	@Override
	public boolean updateAccessBlockedDate(String userId) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.updateAccessBlockedDate(userId);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean deleteAccessBlockedDate(String userId) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.deleteAccessBlockedDate(userId);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}
}
