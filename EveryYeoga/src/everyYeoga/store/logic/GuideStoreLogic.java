package everyYeoga.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;
import everyYeoga.store.GuideStore;
import everyYeoga.store.factory.EveryYeogaSqlSessionFactory;
import everyYeoga.store.mapper.GuideMapper;

@Repository
public class GuideStoreLogic implements GuideStore {
	
	private EveryYeogaSqlSessionFactory factory;
	
	public GuideStoreLogic() {
		factory = EveryYeogaSqlSessionFactory.getInstance();
	}

	@Override
	public List<Join> retrieveGuide(String travelPlanId) {
		//진휘
		SqlSession session = factory.getSession();
		List<Join> list = null;
		try {
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			list = mapper.retrieveGuide(travelPlanId);
			
		}finally {
			session.close();
		}
		return list;
	}

	@Override
	public Join retrieveJoinDetail(String joinId) {
		//진휘
		SqlSession session = factory.getSession();
		Join join = null;
		try {
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			join = mapper.retrieveJoinDetail(joinId);
		}finally {
			session.close();
		}
		
		return join;
	}


	@Override
	public boolean createEvaluation(Evaluation evaluation) {
		//진휘
		SqlSession session = factory.getSession();
		try {
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			mapper.createEvaluation(evaluation);
			session.commit();
		}finally {
			session.close();
		}
		return true;
	}

	@Override
	public List<Evaluation> retrieveEvaluation(String guideId) {
		//진휘
		SqlSession session = factory.getSession();
		List<Evaluation> list = null;
		try {
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			list = mapper.retrieveEvaluation(guideId);
		}finally {
			session.close();
		}
		return list;
	}

	@Override
	public boolean createJoin(Join join) {
		//진휘
		SqlSession session = factory.getSession();
		try {
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			mapper.createJoin(join);
			session.commit();
		}finally {
			session.close();
		}
		return true;
	}

	@Override
	public void deleteJoin(String guideId, String travelPlanId) {
		// 선빈
		SqlSession session = factory.getSession();
		try {
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			mapper.deleteJoin(guideId, travelPlanId);
			session.commit();
		}finally {
			session.close();
		}
	}

}
