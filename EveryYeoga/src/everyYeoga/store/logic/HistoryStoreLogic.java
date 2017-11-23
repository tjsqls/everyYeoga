package everyYeoga.store.logic;

import java.util.List;

import org.springframework.stereotype.Repository;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;
import everyYeoga.store.HistoryStore;

@Repository
public class HistoryStoreLogic implements HistoryStore {

	@Override
	public List<TravelerHistory> retrieveTravelerHistory(String travelerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createTravelerHistory(TravelerHistory travelerHistory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean deleteTravelerHistory(String travelerHistoryId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<GuideHistory> retrieveCheckedGuideHistory(String guideId, String travelEndStatus) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GuideHistory> retrieveUncheckedGuideHistory(String guideId, String travelEndStatus) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createGuideHistory(GuideHistory guideHistory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateGuideHistory(String guideHistoryId) {
		// TODO Auto-generated method stub
		
	}

}
