package everyYeoga.store.logic;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import everyYeoga.domain.User;
import everyYeoga.store.UserStore;
import everyYeoga.store.factory.EveryYeogaSqlSessionFactory;
import everyYeoga.store.mapper.UserMapper;

@Repository
public class UserStoreLogic implements UserStore{

	@Override
	public boolean createUser(User user) {
		//선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.createUser(user);
		session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public User retrieveByUserId(String userId) {
		//선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		User user = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			user = mapper.retrieveByUserId(userId);
		}finally {
			session.close();
		}
		return user;
	}

	@Override
	public boolean updateUser(User user) {
		//선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.updateUser(user);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean deleteUser(String userId) {
		//선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.deleteUser(userId);
			session.commit();
		}finally {
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
			
		}finally {
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
		}finally {
			session.close();
		}
		return false;
	}


}
