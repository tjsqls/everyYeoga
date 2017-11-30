package everyYeoga.service.logic;

import static org.junit.Assert.assertEquals;

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
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

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

//@RunWith(SpringJUnit4ClassRunner.class)
//@WebAppConfiguration
//@ContextConfiguration(locations = {"file:WebContent/WEB-INF/dispatcher-servlet.xml"})

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
		return travelStore.createTravelPlan(travelPlan);
		
	}

	@Override//test완료
	public boolean registJoin(Join join, String travelPlanId) {
		// 진휘
		return guideStore.createJoin(join, travelPlanId);
	}


	@Override//test 완료
	public List<TravelPlan> searchTravelPlansByTravelPlan(String travelArea, String speakingAbility, String startDate) {
		// 진휘
		if(speakingAbility.equals("") && startDate.equals("")) {

			return travelStore.retrieveTravelPlanByTravelArea(travelArea);
		}else if(startDate.equals("")) {

			

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
//		@Test
//		public void testRegistJoin() {
	/*	TravelPlan t = new TravelPlan();
		t.setSpeakingAbility("0");
		t.setPreferGuide("0");
		t.setTheme("0");
		t.setTravelArea("0");
		t.setNumberOfVisits("0");
		t.setNumberOfTraveler("0");
		t.setGatheringStatus("0");
		t.setSelfIntroduction("0");
		User u = new User();
		u.setId("0");
		t.setTraveler(u);
		service.registTravelPlan(t);*/

	/*	Join j = new Join();
		User u = new User();
		TravelPlan travel = new TravelPlan();
		travel.setTravelPlanId("9999999");
		u.setId("999999");
		j.setJoinId("99999");
		j.setGuide(u);
		j.setSpeakingAbility("990");
		j.setTravelArea("990");
		j.setGuideExperience("990");
		j.setSelfIntroduction("990");
		j.setJoinReason("990");
		service.registJoin(j, travel.getTravelPlanId());
	 */

//	List<TravelPlan> list = service.searchTravelPlansByTravelPlan("지니", "지니", "17/12/01");
//	assertEquals("3", list.get(0).getTraveler().getId());
//	System.out.println(list.size());
		
		
	/*	List<Join> l = service.searchGuide("1");
		System.out.println("size: "+l.size());
		System.out.println("theme"+l.get(0).getGuideHistories().get(0).getTheme());
		System.out.println("이유 "+l.get(0).getReports().get(0).getReportReason());
		System.out.println("cc "+l.get(0).getEvaluations().get(0).getPros());
	 */
	//		Evaluation e = new Evaluation();
	//		e.setCons("d");
	//		e.setEvaluationId("2");
	//		e.setPros("d");
	//		e.setStars(3);
	//		User tu = new User();
	//		User gu = new User();
	//		gu.setId("2");
	//		tu.setId("1");
	//		
	//		e.setTraveler(tu);
	//		e.setGuide(gu);
	//		service.registEvaluation(e);

	//		
	//		List<Evaluation> list = service.searchEvaluation("2");
	//		System.out.println(list.size());

	//		TravelPlan t = service.searchTravelPlan("2");
	//		System.out.println(t.getSpeakingAbility());

	//		assertEquals(true, service.removeTravelPlan("2"));

	//		List<TravelPlan> list = service.searchTravelPlansByTravelPlan("인천", "중간", "17/11/11");
	//		System.out.println(list.size());
	//		
	//		System.out.println("aaaaaaaaaaaaa");
	//		Join j = service.searchJoinDetail("1");
	//		System.out.println(j.getGuideExperience());



//			}
	@Override //test 완료
	public List<Join> searchGuide(String travelPlanId) {// 여행계획에 참여신청한 가이드 목록
		// 진휘
		List<Join> js = guideStore.retrieveGuide(travelPlanId);
		//System.out.println("suzeee "+js.size());
		//System.out.println(js.get(0).toString());

		/*	for(Join j: js) {
			System.out.println("--"+j.getGuide().getId()+"--");
		}
		 */
		/*
		 //mapper에서 처리되는 부분이므로 여기서 할 필요 X(이미 되서 넘어옴)
		for (Join j : js) {
			j.setGuide(userStore.retrieveByUserId(j.getGuide().getId()));
		}
		 */
		for (Join j : js) {
			List<GuideHistory> cGs = historyStore.retrieveCheckedGuideHistory(j.getGuide().getId(), "checked");
			cGs.addAll(historyStore.retrieveCheckedGuideHistory(j.getGuide().getId(), "unchecked"));

			j.setGuideHistories(cGs);
		}//test완료

		for (Join j : js) {
			j.setReports(reportStore.retrieveReport(j.getGuide().getId()));
		}//test 완료

		for (Join j : js) {
			j.setEvaluations(guideStore.retrieveEvaluation(j.getGuide().getId()));
		}//test완료

		return js;
	}

	@Override//해야함
	public Join searchJoinDetail(String joinId) {
		// 진휘
		Join j = guideStore.retrieveJoinDetail(joinId);
		j.setGuide(userStore.retrieveByUserId(j.getGuide().getId()));

		List<GuideHistory> cGs = historyStore.retrieveCheckedGuideHistory(j.getGuide().getId(), "checked");
		cGs.addAll(historyStore.retrieveCheckedGuideHistory(j.getGuide().getId(), "unchecked"));

		j.setGuideHistories(cGs);

		j.setReports(reportStore.retrieveReport(j.getGuide().getId()));

		j.setEvaluations(guideStore.retrieveEvaluation(j.getGuide().getId()));

		return j;
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
	public TravelPlan searchTravelPlanByUserId(String userId) {
		// TODO Auto-generated method stub
		return travelStore.retrieveTravelPlanByUserId(userId);
	}



}
