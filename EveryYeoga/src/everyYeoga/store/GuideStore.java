package everyYeoga.store;

import java.util.List;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;

public interface GuideStore {
	public List<Join> retrieveGuide(String travelPlanId);
	public Join retrieveJoinDetail(String joinId);
	public boolean createUserInGroup(String groupId, String UserId);
	public boolean createEvaluation(Evaluation evaluation);
	public List<Evaluation> retrieveEvaluation(String guideId);
	public boolean createJoin(Join join);

}
