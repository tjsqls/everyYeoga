package everyYeoga.service;

import java.util.List;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;

public interface HistoryService {
	public List<TravelerHistory> searchTravelerHistory(String travelerId);
	public void registTravelerHistory(TravelerHistory travelerHistory);
	public boolean removeTravelerHistory(String travelerHistoryId);
	public List<GuideHistory> searchGuideHistory(String guideId);
	public void registGuideHistory(GuideHistory guideHistory);
	public void modifyGuideHistory(String guideHistoryId);

}
