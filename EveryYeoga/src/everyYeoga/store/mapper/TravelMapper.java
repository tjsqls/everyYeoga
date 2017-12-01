package everyYeoga.store.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.TravelPlan;

public interface TravelMapper {
	public boolean createTravelPlan(TravelPlan travelPlan);
	public List<TravelPlan> retrieveTravelPlanByTravelArea (String travelArea);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndStartDate(@Param("travelArea")String travelArea, @Param("startDate")String startDate); 
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbility(@Param("travelArea")String travelArea, @Param("speakingAbility")String speakingAbility);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(@Param("travelArea")String travelArea, @Param("speakingAbility")String speakingAbility, @Param("startDate")String startDate);
	public TravelPlan retrieveTravelPlan(String travelPlanId); 
	public boolean updateTravelPlan(TravelPlan travelPlanId);//2017.11.2 String -> 객체로 변경 진휘
	public boolean deleteTravelPlan(String travelPlanId);
	public List<TravelPlan> retrieveAllTravelPlans();
	public TravelPlan retrieveTravelPlanByUserId(String userId);
}
