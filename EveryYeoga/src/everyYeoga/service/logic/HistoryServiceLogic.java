package everyYeoga.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;
import everyYeoga.service.HistoryService;
import everyYeoga.store.HistoryStore;

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
		return historyStore.retrieveCheckedGuideHistory(guideId, travelEndStatus);
	}

	@Override
	public void registGuideHistory(GuideHistory guideHistory) {
		// 선빈
		historyStore.createGuideHistory(guideHistory);
	}

	@Override
	public void modifyGuideHistory(GuideHistory guideHistory) {
		// 선빈
		historyStore.updateGuideHistory(guideHistory);
	}

}
