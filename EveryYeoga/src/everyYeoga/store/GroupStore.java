package everyYeoga.store;

import everyYeoga.domain.Group;

public interface GroupStore {
	public boolean updateGroupStatus(String travelPlanId, String gatheringStatus);
	public boolean groupOut(String groupId, String userId);
	public boolean deleteGroup(String groupId);
	public Group retreiveJoiningGroup(String travelPlanId);
	public boolean createGroup(Group group); 
	public boolean createUserInGroup(String groupId, String userId);

}
