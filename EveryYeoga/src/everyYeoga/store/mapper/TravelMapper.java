package everyYeoga.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.TravelPlan;

public interface TravelMapper {
	public boolean createTravelPlan(TravelPlan travelPlan);
	public List<TravelPlan> retrieveTravelPlanByTravelArea (String travelArea);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndStartDate(@Param("travelArea")String travelArea, @Param("startDate")String startDate); 
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbility(@Param("travelArea")String travelArea, @Param("speakingAbility")String speakingAbility);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(@Param("travelArea")String travelArea, @Param("speakingAbility")String speakingAbility, @Param("startDate")String startDate);//Date타입 변수를 String으로 변경
	public TravelPlan retrieveTravelPlan(String travelPlanId); 
	public boolean updateTravelPlan(TravelPlan travelPlanId);//String -> 객체로 변경
	public boolean deleteTravelPlan(String travelPlanId);
	public List<TravelPlan> retrieveAllTravelPlans();
	public TravelPlan retrieveTravelPlanByUserId(@Param("travelerId")String travelerId, @Param("gatheringStatus")String gatheringStatus); // 2017.12.01 String gathringStatus 파라미터 추가 선빈

}
