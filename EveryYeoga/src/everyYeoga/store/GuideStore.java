package everyYeoga.store;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;

public interface GuideStore {
	public List<Join> retrieveGuide(String travelPlanId);
	public Join retrieveJoinDetail(String joinId);
	public boolean createEvaluation(Evaluation evaluation);
	public List<Evaluation> retrieveEvaluation(String guideId);
	public boolean createJoin(Join join);
	public void deleteJoin(String guideId, String travelPlanId);//2017.12.02 메소드 추가 선빈

}
