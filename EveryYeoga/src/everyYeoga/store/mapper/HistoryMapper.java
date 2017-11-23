package everyYeoga.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;

public interface HistoryMapper {
	public List<TravelerHistory> retrieveTravelerHistory(String travelerId);
	public void createTravelerHistory(TravelerHistory travelerHistory);
	public boolean deleteTravelerHistory(String travelerHistoryId);
	public List<GuideHistory> retrieveCheckedGuideHistory(@Param("guideId")String guideId, @Param("travelEndStatus")String travelEndStatus);
	public List<GuideHistory> retrieveUncheckedGuideHistory(@Param("guideId")String guideId, @Param("travelEndStatus")String travelEndStatus);
	public void createGuideHistory(GuideHistory guideHistory);
	public void updateGuideHistory(GuideHistory guideHistory);
	public GuideHistory retrieveByGuideHistoryId(String guideHistoryId);//2017.11.23 메소드 추가 선빈
}
