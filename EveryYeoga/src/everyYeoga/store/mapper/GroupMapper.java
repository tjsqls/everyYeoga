package everyYeoga.store.mapper;

import everyYeoga.domain.Group;

public interface GroupMapper {
	public boolean updateGroupStatus(String travelPlanId);
	public boolean groupOut(String groupId, String userId);
	public boolean deleteGroup(String groupId);
	public Group retreiveJoiningGroup(String travelPlanId);
	public boolean createGroup(Group group); 
	public boolean createUserInGroup(String groupId, String userId);
}
