package everyYeoga.store;

import java.util.List;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;

public interface GuideStore {
	public List<Join> retrieveGuide(String travelPlanId);
	public Join retrieveJoinDetail(String joinId);
	public boolean createUserInGroup(String groupId, String userId);//UserId를 userId로 변경
	public boolean createEvaluation(Evaluation evaluation);
	public List<Evaluation> retrieveEvaluation(String guideId);
	public boolean createJoin(Join join, String travelPlanId);// 파라미터 travelPlanId 추가

}
