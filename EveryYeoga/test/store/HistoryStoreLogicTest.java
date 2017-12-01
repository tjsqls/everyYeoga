package store;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;
import everyYeoga.store.HistoryStore;
import everyYeoga.store.logic.HistoryStoreLogic;

public class HistoryStoreLogicTest {
	private HistoryStore store;
	@Before
	public void setUp() throws Exception {
		store = new HistoryStoreLogic();
	}

//	@Test
//	public void testRetrieveTravelerHistory() {
//		List<TravelerHistory> list = store.retrieveTravelerHistory("sunny");
//		
//		assertNotNull(list);
//		assertEquals("정인애", list.get(0).getGuideName());
//	}

//	@Test
//	public void testCreateTravelerHistory() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testDeleteTravelerHistory() {
//		store.deleteTravelerHistory("1");
//	}
//
	@Test
	public void testRetrieveCheckedGuideHistory() {
		List<GuideHistory> list = store.retrieveCheckedGuideHistory("1", "확인");
		assertEquals("1", list.get(0).getGuide().getId());
		System.out.println(list.get(0).getGuide().toString());
		System.out.println(list.get(0).getGuideHistoryId());
	}
//
//	@Test
//	public void testRetrieveUncheckedGuideHistory() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testCreateGuideHistory() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testUpdateGuideHistory() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testRetrieveByGuideHistoryId() {
//		fail("Not yet implemented");
//	}

}
