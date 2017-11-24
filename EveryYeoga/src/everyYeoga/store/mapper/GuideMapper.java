package everyYeoga.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;

public interface GuideMapper {
	public List<Join> retrieveGuide(String travelPlanId);
	public Join retrieveJoinDetail(String joinId);
	public boolean createUserInGroup(String groupId, String userId);//UserId 를 userId로 변경
	public boolean createEvaluation(Evaluation evaluation);
	public List<Evaluation> retrieveEvaluation(String guideId);
	public boolean createJoin(@Param("join")Join join, @Param("travelPlanId")String travelPlanId);
}
