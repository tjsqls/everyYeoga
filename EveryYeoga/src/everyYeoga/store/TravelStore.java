package everyYeoga.store;

import java.util.Date;
import java.util.List;

import everyYeoga.domain.Join;
import everyYeoga.domain.TravelPlan;

public interface TravelStore {
	public boolean createTavelPlan(TravelPlan travelPlan);
	public List<TravelPlan> retrieveTravelPlanByTravelArea (String travelArea);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndStartDate(String travelArea, Date startDate); 
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbility(String travelArea, String speakingAbility);
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(String travelArea, String speakingAbility, Date startDate);
	public TravelPlan retrieveTravelPlan(String travelPlanId); 
	public boolean updateTravelPlan(String travelPlanId);
	public boolean deleteTravelPlan(String travelPlanId);

}
