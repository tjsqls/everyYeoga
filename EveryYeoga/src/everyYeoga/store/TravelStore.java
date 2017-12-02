package everyYeoga.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.TravelPlan;

public interface TravelStore {
	public boolean createTravelPlan(TravelPlan travelPlan);
	public List<TravelPlan> retrieveTravelPlanByTravelArea (String travelArea);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndStartDate(String travelArea, String startDate); 
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbility(String travelArea, String speakingAbility);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(String travelArea, String speakingAbility, String startDate);//Date타입 변수를 String으로 변경
	public TravelPlan retrieveTravelPlan(String travelPlanId); 
	public boolean updateTravelPlan(TravelPlan travelPlanId);//String -> 객체로 변경
	public boolean deleteTravelPlan(String travelPlanId);
	public List<TravelPlan> retrieveAllTravelPlans();
	public TravelPlan retrieveTravelPlanByUserId(String travelerId, String gathringStatus); // 2017.12.01 String gathringStatus 파라미터 추가 선빈

}
