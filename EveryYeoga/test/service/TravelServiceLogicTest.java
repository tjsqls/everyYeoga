package service;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import everyYeoga.domain.TravelPlan;
import everyYeoga.domain.User;
import everyYeoga.service.TravelService;
import everyYeoga.service.logic.TravelServiceLogic;

public class TravelServiceLogicTest {
	TravelService service;

	@Before
	public void setUp() throws Exception {
		service = new TravelServiceLogic();
	}

	@Test
	public void testRegistTravelPlan() {
		TravelPlan t = new TravelPlan();
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
		service.registTravelPlan(t);
	}

//	@Test
//	public void testRegistJoin() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSearchTravelPlansByTravelPlan() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSearchTravelPlan() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testModifyTravelPlan() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testRemoveTravelPlan() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSearchGuide() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSearchJoinDetail() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testRegistEvaluation() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSearchEvaluation() {
//		fail("Not yet implemented");
//	}

}
