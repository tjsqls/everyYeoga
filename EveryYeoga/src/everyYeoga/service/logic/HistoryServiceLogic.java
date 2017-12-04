package everyYeoga.service.logic;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;
import everyYeoga.service.HistoryService;
import everyYeoga.store.HistoryStore;


//@RunWith(SpringJUnit4ClassRunner.class)
//@WebAppConfiguration
//@ContextConfiguration(locations = {"file:WebContent/WEB-INF/dispatcher-servlet.xml"})


@Service
public class HistoryServiceLogic implements HistoryService {

	@Autowired
	private HistoryStore historyStore;
	
	@Override
	public List<TravelerHistory> searchTravelerHistory(String travelerId) {
		// 선빈
		return historyStore.retrieveTravelerHistory(travelerId);
	}

	@Override
	public void registTravelerHistory(TravelerHistory travelerHistory) {
		// 선빈
		historyStore.createTravelerHistory(travelerHistory);
	}

	@Override
	public boolean removeTravelerHistory(String travelerHistoryId) {
		// 선빈
		return historyStore.deleteTravelerHistory(travelerHistoryId);
	}

	@Override
	public List<GuideHistory> searchGuideHistory(String guideId, String travelEndStatus) {
		// 선빈
		if(travelEndStatus =="확인") {
			return historyStore.retrieveCheckedGuideHistory(guideId, travelEndStatus);
		}
		
		return historyStore.retrieveUncheckedGuideHistory(guideId, travelEndStatus);
	}

	@Override
	public void registGuideHistory(GuideHistory guideHistory) {
		// 선빈
		historyStore.createGuideHistory(guideHistory);
	}

	@Override
	public void modifyGuideHistory(String guideId, String travelerName, String travelEndStatus) {
		// 선빈
		historyStore.updateGuideHistory(guideId, travelerName, travelEndStatus);
	}
	
	
//	@Test
//	public void testRegistJoin() {
//		
//		List<GuideHistory> list = historyStore.retrieveCheckedGuideHistory("1", "확인");
//		System.out.println(list.get(0).getGuide().getId());
//	
//	}
	
	
	
	

}
