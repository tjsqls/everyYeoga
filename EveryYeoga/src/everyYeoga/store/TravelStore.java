package everyYeoga.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.TravelPlan;

public interface TravelStore {
	public boolean createTravelPlan(TravelPlan travelPlan);
	public List<TravelPlan> retrieveTravelPlanByTravelArea (String travelArea);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndStartDate(@Param("travelArea")String travelArea, @Param("startDate")String startDate); 
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbility(Map<String, String> travelPlanMap);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(@Param("travelArea")String travelArea, @Param("speakingAbility")String speakingAbility, @Param("starDate")String startDate);//Date타입 변수를 String으로 변경
	public TravelPlan retrieveTravelPlan(String travelPlanId); 
	public boolean updateTravelPlan(TravelPlan travelPlanId);//String -> 객체로 변경
	public boolean deleteTravelPlan(String travelPlanId);
	public List<TravelPlan> retrieveAllTravelPlans();
	public TravelPlan retrieveTravelPlanByUserId(String userId);

}
