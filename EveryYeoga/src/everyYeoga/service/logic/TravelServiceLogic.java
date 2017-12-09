package everyYeoga.service.logic;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.objenesis.instantiator.sun.MagicInstantiator;
import org.springframework.stereotype.Service;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.Join;
import everyYeoga.domain.Report;
import everyYeoga.domain.TravelPlan;
import everyYeoga.domain.User;
import everyYeoga.service.TravelService;
import everyYeoga.store.GroupStore;
import everyYeoga.store.GuideStore;
import everyYeoga.store.HistoryStore;
import everyYeoga.store.ReportStore;
import everyYeoga.store.TravelStore;
import everyYeoga.store.UserStore;
import everyYeoga.store.logic.TravelStoreLogic;


@Service
public class TravelServiceLogic implements TravelService {

	@Autowired
	private UserStore userStore;
	@Autowired
	private TravelStore travelStore;
	@Autowired
	private GroupStore groupStore;
	@Autowired
	private GuideStore guideStore;
	@Autowired
	private HistoryStore historyStore;
	@Autowired
	private ReportStore reportStore;
	@Autowired
	private TravelService service;


   @Override//test완료
   public boolean registTravelPlan(TravelPlan travelPlan) {
      // 진휘
	   travelPlan.setGatheringStatus("모집중");
	   
      return travelStore.createTravelPlan(travelPlan);
      
   }


	@Override//test완료
	public boolean registJoin(Join join) {
		// 진휘
		return guideStore.createJoin(join);
	}


	@Override//test 완료
	public List<TravelPlan> searchTravelPlansByTravelPlan(String travelArea, String speakingAbility, String startDate) {
		// 진휘
		if(speakingAbility.equals("") && startDate.equals("")) {

			return travelStore.retrieveTravelPlanByTravelArea(travelArea);
		}
		else if(startDate.equals("")) {

			

			return travelStore.retrieveTravelPlanByTravelAreaAndSpeakingAbility(travelArea, speakingAbility);
		}else if(speakingAbility.equals("")){

			return travelStore.retrieveTravelPlanByTravelAreaAndStartDate(travelArea, startDate);
		}else {

			return travelStore.retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(travelArea, speakingAbility, startDate);
		}

	}

	@Override// test 완료
	public TravelPlan searchTravelPlan(String travelPlanId) {
		// 진휘
		return travelStore.retrieveTravelPlan(travelPlanId);
	}

	@Override//store test완료
	public boolean modifyTravelPlan(TravelPlan travelPlan) {
		// 진휘
		return travelStore.updateTravelPlan(travelPlan);
	}

	@Override//test 완료
	public boolean removeTravelPlan(String travelPlanId) {
		// 진휘
		return travelStore.deleteTravelPlan(travelPlanId);
	}
		
	@Override //test 완료
	public List<Join> searchGuide(String travelPlanId) {// 여행계획에 참여신청한 가이드 목록
		// 진휘
		List<Join> js = guideStore.retrieveGuide(travelPlanId);
		List<Join> list = new ArrayList<Join>();
	
		for (int i=0; i<js.size(); i++ ) {
			Join j = new Join();
			j=js.get(i);
			List<GuideHistory> cGs = historyStore.retrieveCheckedGuideHistory(j.getGuideId(), "confirm");
			if(historyStore.retrieveUncheckedGuideHistory(j.getGuideId(), "unconfirm")!=null) {
			cGs.addAll(historyStore.retrieveUncheckedGuideHistory(j.getGuideId(), "unconfirm"));
			}
			j.setGuideHistories(cGs);
			j.setReports(reportStore.retrieveReport(j.getGuideId()));
			j.setEvaluations(guideStore.retrieveEvaluation(j.getGuideId()));
			list.add(j);
		}//test완료

		return list;
	}

	@Override//해야함
	public Join searchJoinDetail(String joinId) {
		// 진휘
		Join join = new Join();
		Join j = guideStore.retrieveJoinDetail(joinId);

		List<GuideHistory> cGs = historyStore.retrieveCheckedGuideHistory(j.getGuideId(), "confirm");
		cGs.addAll(historyStore.retrieveCheckedGuideHistory(j.getGuideId(), "unconfirm"));
		j.setGuideHistories(cGs);
		j.setReports(reportStore.retrieveReport(j.getGuideId()));
		j.setEvaluations(guideStore.retrieveEvaluation(j.getGuideId()));
		return j;
	}


   @Override
   public TravelPlan searchTravelPlanByUserId(String userId) {
      // TODO Auto-generated method stub
      return travelStore.retrieveTravelPlanByUserId(userId, "모집중");
   }

	@Override//test 완료
	public boolean registEvaluation(Evaluation evaluation) {
		// 진휘
		return guideStore.createEvaluation(evaluation);
	}

	@Override//test 완료
	public List<Evaluation> searchEvaluation(String guideId) {
		// 진휘
		return guideStore.retrieveEvaluation(guideId);
	}

	@Override
	public List<TravelPlan> searchAllTravelPlans() {
		// TODO Auto-generated method stub
		return travelStore.retrieveAllTravelPlans();
	}


	@Override
	public void removeJoin(String guideId, String travelPlanId) {
		// 선빈
		guideStore.deleteJoin(guideId, travelPlanId);
	}




}
