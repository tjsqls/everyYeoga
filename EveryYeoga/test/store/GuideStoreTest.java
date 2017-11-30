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
//
//	@Test
//	public void testRetrieveGuide() {
//		List<Join> list = store.retrieveGuide("1");
//		assertEquals("aa", list.get(0).getJoinReason());
//	}완
//
//	@Test
//	public void testRetrieveJoinDetail() {
//		Join j = store.retrieveJoinDetail("1");
//		assertEquals("dd", j.getSpeakingAbility());
//		System.out.println(j.toString());
//	}


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
//		e.setGuide(g);
//		store.createEvaluation(e);
//	
//	}

//	@Test
//	public void testRetrieveEvaluation() {
//		List<Evaluation> list = store.retrieveEvaluation("2");
//		assertEquals("3", list.get(0).getTraveler().getId());
//		
//	}

//	@Test
//	public void testCreateJoin() {
//		Join j = new Join();
//		User u = new User();
//		TravelPlan travel = new TravelPlan();
//		travel.setTravelPlanId("0");
//		u.setId("5555555555");
//		j.setJoinId("5555555555555");
//		j.setGuide(u);
//		j.setSpeakingAbility("0");
//		j.setTravelArea("0");
//		j.setGuideExperience("0");
//		j.setSelfIntroduction("0");
//		j.setJoinReason("0");
//		store.createJoin(j, travel.getTravelPlanId());
//		
//	}

}
