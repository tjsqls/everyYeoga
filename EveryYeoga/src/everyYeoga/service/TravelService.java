package everyYeoga.service;

import java.util.Date;
import java.util.List;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;
import everyYeoga.domain.TravelPlan;

public interface TravelService {
	public boolean registTravelPlan(TravelPlan travelPlan);
	public boolean registJoin(Join join);
	public List<TravelPlan> searchTravelAreaByTravelPlan(String travelArea, String speakingAbility, Date startDate);
	public TravelPlan searchTravelArea(String travelPlanId);
	public boolean modifyTravelPlan(String travelPlanId);
	public boolean removeTravelPlan(String travelPlanId);
	public List<Join> searchGuide(String travelPlanId);
	public Join searchJoinDetail(String reportReceivedUserId, String joinId);
	public boolean registEvaluation(Evaluation evaluation);
	public List<Evaluation> searchEvaluation(String guideId);

}
