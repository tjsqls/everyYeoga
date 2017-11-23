package everyYeoga.store.logic;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import everyYeoga.domain.Group;
import everyYeoga.store.GroupStore;
import everyYeoga.store.factory.EveryYeogaSqlSessionFactory;
import everyYeoga.store.mapper.GroupMapper;

@Repository
public class GroupStoreLogic implements GroupStore{

	@Override
	public boolean updateGroupStatus(String travelPlanId, String gatheringStatus) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			GroupMapper mapper = session.getMapper(GroupMapper.class);
			mapper.updateGroupStatus(travelPlanId, gatheringStatus);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean groupOut(String groupId, String userId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			GroupMapper mapper = session.getMapper(GroupMapper.class);
			mapper.groupOut(groupId, userId);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean deleteGroup(String groupId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			GroupMapper mapper = session.getMapper(GroupMapper.class);
			mapper.deleteGroup(groupId);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public Group retreiveJoiningGroup(String travelPlanId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		Group group = null;
		try {
			GroupMapper mapper = session.getMapper(GroupMapper.class);
			group = mapper.retreiveJoiningGroup(travelPlanId);
			
		}finally {
			session.close();
		}
		return group;
	}

	@Override
	public boolean createGroup(Group group) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			GroupMapper mapper = session.getMapper(GroupMapper.class);
			mapper.createGroup(group);
			session.commit();
			
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean createUserInGroup(String groupId, String userId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			GroupMapper mapper = session.getMapper(GroupMapper.class);
			mapper.createUserInGroup(groupId, userId);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

}
