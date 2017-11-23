package everyYeoga.store.logic;

import org.springframework.stereotype.Repository;

import everyYeoga.domain.Group;
import everyYeoga.store.GroupStore;

@Repository
public class GroupStoreLogic implements GroupStore{

	@Override
	public boolean updateGroupStatus(String travelPlanId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean groupOut(String groupId, String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteGroup(String groupId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Group retreiveJoiningGroup(String travelPlanId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean createGroup(Group group) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean createUserInGroup(String groupId, String userId) {
		// TODO Auto-generated method stub
		return false;
	}

}
