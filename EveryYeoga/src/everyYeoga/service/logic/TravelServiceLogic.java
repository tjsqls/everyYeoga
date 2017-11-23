package everyYeoga.service.logic;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;
import everyYeoga.domain.TravelPlan;
import everyYeoga.service.TravelService;

@Service
public class TravelServiceLogic implements TravelService{

	@Override
	public boolean registTravelPlan(TravelPlan travelPlan) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean registJoin(Join join) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<TravelPlan> searchTravelAreaByTravelPlan(String travelArea, String speakingAbility, Date startDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TravelPlan searchTravelArea(String travelPlanId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modifyTravelPlan(String travelPlanId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeTravelPlan(String travelPlanId) {
		// TODO Auto-generated method stub
		return false;
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
