package everyYeoga.service.logic;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;
import everyYeoga.domain.TravelPlan;
import everyYeoga.service.TravelService;
import everyYeoga.store.GroupStore;
import everyYeoga.store.GuideStore;
import everyYeoga.store.TravelStore;
import everyYeoga.store.UserStore;

@Service
public class TravelServiceLogic implements TravelService{
	
	@Autowired
	private UserStore userStore;
	@Autowired
	private TravelStore travelStore;
	@Autowired
	private GroupStore groupStore;
	@Autowired
	private GuideStore guideStore;
	
	
	@Override
	public boolean registTravelPlan(TravelPlan travelPlan) {
		//진휘
		return travelStore.createTravelPlan(travelPlan);
	}

	@Override
	public boolean registJoin(Join join, String travelPlanId) {
	
		return guideStore.createJoin(join, travelPlanId);
	}

	@Override
	public List<TravelPlan> searchTravelAreaByTravelPlan(String travelArea, String speakingAbility, String startDate) {
		return travelStore.retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(travelArea, speakingAbility, startDate);
	}

	@Override
	public TravelPlan searchTravelArea(String travelPlanId) {
		
		return null;
	}

	@Override
	public boolean modifyTravelPlan(String travelPlanId) {
		return false;
	}

	@Override
	public boolean removeTravelPlan(String travelPlanId) {
		return travelStore.deleteTravelPlan(travelPlanId);
	}

	@Override
	public List<Join> searchGuide(String travelPlanId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Join searchJoinDetail(String reportReceivedUserId, String joinId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean registEvaluation(Evaluation evaluation) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Evaluation> searchEvaluation(String guideId) {
		// TODO Auto-generated method stub
		return null;
	}

}
