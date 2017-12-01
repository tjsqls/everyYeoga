package everyYeoga.store.logic;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import everyYeoga.domain.TravelPlan;
import everyYeoga.store.TravelStore;
import everyYeoga.store.factory.EveryYeogaSqlSessionFactory;
import everyYeoga.store.mapper.TravelMapper;

@Repository
public class TravelStoreLogic implements TravelStore {

	private EveryYeogaSqlSessionFactory factory;

	public TravelStoreLogic() {
		factory = EveryYeogaSqlSessionFactory.getInstance();
	}


	@Override
	public boolean createTravelPlan(TravelPlan travelPlan) {
		//진휘
		SqlSession session = factory.getSession();
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			mapper.createTravelPlan(travelPlan);
			session.commit();
		}finally {
			session.close();
		}
		return true;
	}


	@Override
	public List<TravelPlan> retrieveTravelPlanByTravelArea(String travelArea) {
		//진휘
		SqlSession session = factory.getSession();
		List<TravelPlan> list = null;
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			list = mapper.retrieveTravelPlanByTravelArea(travelArea);
		}finally {
			session.close();
		}
		return list;
	}

	@Override
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndStartDate(String travelArea, String startDate) {
		//진휘
		SqlSession session = factory.getSession();
		List<TravelPlan> list = null;
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			list = mapper.retrieveTravelPlanByTravelAreaAndStartDate(travelArea, startDate);

		}finally {
			session.close();
		}
		return list;
	}

	@Override
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbility(String travelArea, String speakingAbility) {
		//진휘
		SqlSession session = factory.getSession();
		List<TravelPlan> list = null;
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			list = mapper.retrieveTravelPlanByTravelAreaAndSpeakingAbility(travelArea,speakingAbility);

		}finally {
			session.close();
		}

		return list;
	}

	@Override
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(String travelArea,
			String speakingAbility, String startDate) {
		//진휘
		SqlSession session = factory.getSession();
		List<TravelPlan> list = null;
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			list = mapper.retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(travelArea, speakingAbility, startDate);

		}finally {
			session.close();
		}
		return list;
	}

	@Override
	public TravelPlan retrieveTravelPlan(String travelPlanId) {
		//진휘
		SqlSession session = factory.getSession();
		TravelPlan travelPlan;
		try {
			travelPlan = new TravelPlan();
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			travelPlan = mapper.retrieveTravelPlan(travelPlanId);
		}finally {
			session.close();
		}
		return travelPlan;
	}

	@Override
	public boolean updateTravelPlan(TravelPlan travelPlan) {
		//진휘
		SqlSession session = factory.getSession();
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			mapper.updateTravelPlan(travelPlan);//mapper수정완료
			session.commit();
		}finally {
			session.close();
		}
		return true;
	}

	@Override
	public boolean deleteTravelPlan(String travelPlanId) {
		//진휘
		SqlSession session = factory.getSession();
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			mapper.deleteTravelPlan(travelPlanId);
			session.commit();
		}finally {
			session.close();
		}
		return true;
	}

	@Override
	public List<TravelPlan> retrieveAllTravelPlans() {
		SqlSession session = factory.getSession();
		List<TravelPlan> list = null;
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			list = mapper.retrieveAllTravelPlans();
		}finally {
			session.close();
		}
		return list;
	}


	@Override
	public TravelPlan retrieveTravelPlanByUserId(String userId) {
		SqlSession session = factory.getSession();
		TravelPlan travelPlan = null;
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);

			travelPlan = mapper.retrieveTravelPlanByUserId(userId);
		}finally {
			session.close();
		}
		return travelPlan;
	}

}
