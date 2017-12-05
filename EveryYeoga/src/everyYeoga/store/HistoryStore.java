package everyYeoga.store;

import java.util.List;


import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;

public interface HistoryStore {
	public List<TravelerHistory> retrieveTravelerHistory(String travelerId);
	public void createTravelerHistory(TravelerHistory travelerHistory);
	public boolean deleteTravelerHistory(String travelerHistoryId);
	public List<GuideHistory> retrieveCheckedGuideHistory(String guideId, String travelEndStatus);
	public List<GuideHistory> retrieveUncheckedGuideHistory(String guideId, String travelEndStatus);
	public void createGuideHistory(GuideHistory guideHistory);
	public void updateGuideHistory(String guideId, String travelerName, String travelEndStatus); // GuideHistory guideHistory에서 파라미터 수정 선빈
	public GuideHistory retrieveByGuideHistoryId(String guideHistoryId); //2017.11.23 메소드 추가 선빈

}
