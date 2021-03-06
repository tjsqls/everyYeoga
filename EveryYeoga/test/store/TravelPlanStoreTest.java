package store;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import everyYeoga.domain.TravelPlan;
import everyYeoga.domain.User;
import everyYeoga.store.TravelStore;
import everyYeoga.store.logic.TravelStoreLogic;

public class TravelPlanStoreTest {
	private TravelStore store;

	@Before
	public void setUp() throws Exception {
		store = new TravelStoreLogic();
	}

//	@Test
//	public void testCreateTravelPlan() {
//		
//		TravelPlan t = new TravelPlan();
//		t.setSpeakingAbility("안녕하세요");
//		t.setPreferGuide("3");
//		t.setTheme("23");
//		t.setTravelArea("서울");
//		t.setNumberOfVisits("2");
//		t.setNumberOfTraveler("2");
//		t.setGatheringStatus("2");
//		t.setSelfIntroduction("asdasd");
//		User u = new User();
//		u.setId("123");
//		t.setTraveler(u);
//		store.createTravelPlan(t);
//	} 
//
//	@Test
//	public void testRetrieveTravelPlanByTravelArea() {
//		List<TravelPlan> list = store.retrieveTravelPlanByTravelArea("서울");
//		assertEquals(2, list.get(0).getTravelPlanId());
//	} 
////
//	@Test
//	public void testRetrieveTravelPlanByTravelAreaAndStartDate() {
//		
//		
//		List<TravelPlan> t = store.retrieveTravelPlanByTravelAreaAndStartDate("지니", "17/12/01");
//		assertEquals("10055", t.get(0).getTravelPlanId());
//	} 
////
//	@Test
//	public void testRetrieveTravelPlanByTravelAreaAndSpeakingAbility() {
//		HashMap<String, String> map = new HashMap<>();
//		map.put("travelArea", "서울");
//		map.put("speakingAbility", "중간");
//		
//		List<TravelPlan> list = store.retrieveTravelPlanByTravelAreaAndSpeakingAbility(map);
//		System.out.println(list.get(0).getTheme());
//	} 
////
	@Test
	public void testRetrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate() {
		List<TravelPlan> list = store.retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate("지니", "지니", "17/12/01");
		assertEquals("3", list.get(0).getTravelerId());
		System.out.println(list.toString());
	} 
//	
////
//	@Test
//	public void testRetrieveTravelPlan() {
//		TravelPlan t = store.retrieveTravelPlanByUserId("3");
//		assertEquals("지니", t.getSpeakingAbility());
//		System.out.println(t.toString());
//	} 
//
/*	@Test
	public void testUpdateTravelPlan() {
		TravelPlan t = new TravelPlan();
		t.setTravelPlanId("1");
		t.setTheme("서울");
		//assertEquals(true, store.updateTravelPlan(t));
	}*/ 
//	
//	@Test
//	public void testDeleteTravelPlan() {
//		assertEquals(true, store.deleteTravelPlan("1"));
//	} 

	
//	@Test
//	public void test() {
//		String userId ="1";
//		System.out.println("size"+store.retrieveAllTravelPlans().size());
//		System.out.println(store.retrieveTravelPlanByUserId("1").getTravelArea());
//	}
}
