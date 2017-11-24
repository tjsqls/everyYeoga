package everyYeoga.store.mapper;

import java.util.List;
import java.util.Map;

import everyYeoga.domain.TravelPlan;

public interface TravelMapper {
	public boolean createTravelPlan(TravelPlan travelPlan);
	public List<TravelPlan> retrieveTravelPlanByTravelArea (String travelArea);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndStartDate(String travelArea, String startDate); 
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbility(Map<String, String> travelPlanMap);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(String travelArea, String speakingAbility, String startDate);
	public TravelPlan retrieveTravelPlan(String travelPlanId); 
	public boolean updateTravelPlan(TravelPlan travelPlanId);//String -> 객체로 변경
	public boolean deleteTravelPlan(String travelPlanId);
}
