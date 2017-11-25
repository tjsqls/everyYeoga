package everyYeoga.service;

import java.util.Date;
import java.util.List;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;
import everyYeoga.domain.TravelPlan;

public interface TravelService {
	public boolean registTravelPlan(TravelPlan travelPlan);
	public boolean registJoin(Join join, String travelPlanId);//파라미터 수정
	public List<TravelPlan> searchTravelAreaByTravelPlan(String travelArea, String speakingAbility, String startDate);//Date타입 파라미터 String으로 변경
	public TravelPlan searchTravelArea(String travelPlanId);
	public boolean modifyTravelPlan(String travelPlanId);
	public boolean removeTravelPlan(String travelPlanId);
	public List<Join> searchGuide(String travelPlanId);
	public Join searchJoinDetail(String reportReceivedUserId, String joinId);
	public boolean registEvaluation(Evaluation evaluation);
	public List<Evaluation> searchEvaluation(String guideId);

}
