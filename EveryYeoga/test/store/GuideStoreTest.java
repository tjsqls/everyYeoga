package store;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.tomcat.util.buf.UDecoder;
import org.junit.Before;
import org.junit.Test;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;
import everyYeoga.domain.TravelPlan;
import everyYeoga.domain.User;
import everyYeoga.store.GuideStore;
import everyYeoga.store.logic.GuideStoreLogic;

public class GuideStoreTest {
	private GuideStore store;
	
	

	@Before
	public void setUp() throws Exception {
		store = new GuideStoreLogic();
	}

//	@Test
//	public void testRetrieveGuide() {
//		List<Join> list = store.retrieveGuide("1");
//		assertEquals("aa", list.get(0).getJoinReason());
//	}

//	@Test
//	public void testRetrieveJoinDetail() {
//		Join j = store.retrieveJoinDetail("1");
//		assertEquals("dd", j.getSpeakingAbility());
//	}
//
//
//	@Test
//	public void testCreateEvaluation() {
//		User u = new User();
//		u.setId("2");
//		User g = new User();
//		g.setId("2");
//		Evaluation e = new Evaluation();
//		e.setEvaluationId("123");
//		e.setPros("dd");
//		e.setCons("dd");
//		e.setStars(3);
//		e.setTraveler(u);
//		e.setGuide(g);
//		store.createEvaluation(e);
//		
//	//	assertEquals("dd", );
//		
//		
//		
//	}
//
//	@Test
//	public void testRetrieveEvaluation() {
//		List<Evaluation> list = store.retrieveEvaluation("2");
//		assertEquals("dd", list.get(0).getPros());
//		
//	}

//	@Test
//	public void testCreateJoin() {
//		Join j = new Join();
//		User u = new User();
//		TravelPlan travel = new TravelPlan();
//		travel.setTravelPlanId("5");
//		u.setId("1");
//		j.setJoinId("4");
//		j.setGuide(u);
//		j.setSpeakingAbility("33");
//		j.setTravelArea("ww");
//		j.setGuideExperience("re");
//		j.setSelfIntroduction("ss");
//		j.setJoinReason("22");
//		store.createJoin(j, travel.getTravelPlanId());
//		
//	}

}
