package everyYeoga.store.mapper;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.Group;

public interface GroupMapper {
	public boolean updateGroupStatus(@Param("travelPlanId")String travelPlanId, @Param("gatheringStatus")String gatheringStatus);
	public boolean groupOut(@Param("groupId")String groupId, @Param("userId")String userId);
	public boolean deleteGroup(String groupId);
	public Group retreiveJoiningGroup(String travelPlanId);
	public boolean createGroup(Group group); 
	public boolean createUserInGroup(@Param("groupId")String groupId, @Param("userId")String userId);
}
