package everyYeoga.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;
import everyYeoga.store.HistoryStore;
import everyYeoga.store.factory.EveryYeogaSqlSessionFactory;
import everyYeoga.store.mapper.HistoryMapper;

@Repository
public class HistoryStoreLogic implements HistoryStore {

	@Override
	public List<TravelerHistory> retrieveTravelerHistory(String travelerId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		List<TravelerHistory> list = null;
		try {
			HistoryMapper mapper = session.getMapper(HistoryMapper.class);
			list = mapper.retrieveTravelerHistory(travelerId);
		}finally {
			session.close();
		}
		return list;
	}

	@Override
	public void createTravelerHistory(TravelerHistory travelerHistory) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			HistoryMapper mapper = session.getMapper(HistoryMapper.class);
			mapper.createTravelerHistory(travelerHistory);
			session.commit();
		}finally {
			session.close();
		}
		
	}

	@Override
	public boolean deleteTravelerHistory(String travelerHistoryId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			HistoryMapper mapper = session.getMapper(HistoryMapper.class);
			mapper.deleteTravelerHistory(travelerHistoryId);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public List<GuideHistory> retrieveCheckedGuideHistory(String guideId, String travelEndStatus) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		List<GuideHistory> list = null;
		try {
			HistoryMapper mapper = session.getMapper(HistoryMapper.class);
			list = mapper.retrieveCheckedGuideHistory(guideId, travelEndStatus);
			
		}finally {
			session.close();
		}
		return list;
	}

	@Override
	public List<GuideHistory> retrieveUncheckedGuideHistory(String guideId, String travelEndStatus) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		List<GuideHistory> list = null;
		try {
			HistoryMapper mapper = session.getMapper(HistoryMapper.class);
			list = mapper.retrieveUncheckedGuideHistory(guideId, travelEndStatus);
			
		}finally {
			session.close();
		}
		return list;
	}

	@Override
	public void createGuideHistory(GuideHistory guideHistory) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			HistoryMapper mapper = session.getMapper(HistoryMapper.class);
			mapper.createGuideHistory(guideHistory);
			session.commit();
		}finally {
			session.close();
		}
		
	}

	@Override
	public void updateGuideHistory(GuideHistory guideHistory) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			HistoryMapper mapper = session.getMapper(HistoryMapper.class);
			mapper.updateGuideHistory(guideHistory);
			session.commit();
		}finally {
			session.close();
		}
		
	}

	@Override
	public GuideHistory retrieveByGuideHistoryId(String guideHistoryId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		GuideHistory guideHistory = null;
		try {
			HistoryMapper mapper = session.getMapper(HistoryMapper.class);
			guideHistory = mapper.retrieveByGuideHistoryId(guideHistoryId);
		}finally {
			session.close();
		}
		return guideHistory;
	}

}
