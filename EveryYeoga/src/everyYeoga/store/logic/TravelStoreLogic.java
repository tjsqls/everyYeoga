package everyYeoga.store.logic;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import everyYeoga.domain.Join;
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
	public boolean createTavelPlan(TravelPlan travelPlan) {
		//진휘
		SqlSession session = factory.getSession();
		try {
		TravelMapper mapper = session.getMapper(TravelMapper.class);
		mapper.createTavelPlan(travelPlan);
		session.commit();
		}finally {
			session.close();
		}
		return false;
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
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndStartDate(String travelArea, Date startDate) {
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
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbility(String travelArea,
			String speakingAbility) {
		//진휘
		SqlSession session = factory.getSession();
		List<TravelPlan> list = null;
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			list = mapper.retrieveTravelPlanByTravelAreaAndSpeakingAbility(travelArea, speakingAbility);
			
		}finally {
			session.close();
		}
		
		return list;
	}

	@Override
	public List<TravelPlan> retrieveTravelPlanByTravelAreaAndSpeakingAbilityAndStartDate(String travelArea,
			String speakingAbility, Date startDate) {
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
		TravelPlan travelPlan = null;
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
	public boolean updateTravelPlan(String travelPlanId) {
		//진휘
		SqlSession session = factory.getSession();
		try {
			TravelMapper mapper = session.getMapper(TravelMapper.class);
			mapper.updateTravelPlan(travelPlanId);
			session.commit();
		}finally {
			session.close();
		}
		return false;
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
		return false;
	}

}
