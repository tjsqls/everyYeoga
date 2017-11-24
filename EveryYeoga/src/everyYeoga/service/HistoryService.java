package everyYeoga.service;

import java.util.List;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;

public interface HistoryService {
	public List<TravelerHistory> searchTravelerHistory(String travelerId);
	public void registTravelerHistory(TravelerHistory travelerHistory);
	public boolean removeTravelerHistory(String travelerHistoryId);
	public List<GuideHistory> searchGuideHistory(String guideId, String travelEndStatus); //2017.11.24 파라미터 추가 String travelEndStatus 선빈
	public void registGuideHistory(GuideHistory guideHistory);
	public void modifyGuideHistory(GuideHistory guideHistory);//2017.11.24 파라미터 변경 String guideHistoryId -> GuideHistory guideHistory  선빈

}
