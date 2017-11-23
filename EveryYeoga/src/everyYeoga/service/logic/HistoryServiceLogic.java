package everyYeoga.service.logic;

import java.util.List;

import org.springframework.stereotype.Service;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;
import everyYeoga.service.HistoryService;

@Service
public class HistoryServiceLogic implements HistoryService {

	@Override
	public List<TravelerHistory> searchTravelerHistory(String travelerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void registTravelerHistory(TravelerHistory travelerHistory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean removeTravelerHistory(String travelerHistoryId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<GuideHistory> searchGuideHistory(String guideId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void registGuideHistory(GuideHistory guideHistory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyGuideHistory(String guideHistoryId) {
		// TODO Auto-generated method stub
		
	}

}
