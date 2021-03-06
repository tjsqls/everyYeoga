package everyYeoga.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import everyYeoga.domain.Report;
import everyYeoga.store.ReportStore;
import everyYeoga.store.factory.EveryYeogaSqlSessionFactory;
import everyYeoga.store.mapper.ReportMapper;

@Repository
public class ReportStoreLogic implements ReportStore {


	@Override
	public Report retrieveReportDetail(String reportId) {
		// 인애
		Report report = null;
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ReportMapper mapper = session.getMapper(ReportMapper.class);
			report = mapper.retrieveReportDetail(reportId);
			session.commit();
		} finally {
			session.close();
		}
		return report;
	}

	@Override
	public List<Report> retrieveReport(String reportedUserId) { // 회원의 신고내역 목록을 가져옴
		// 인애
		List<Report> list = null;
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ReportMapper mapper = session.getMapper(ReportMapper.class);
			list = mapper.retrieveReport(reportedUserId);
			session.commit();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public List<Report> retrieveAllReport() { // 관리자가 보는 전체 신고내역
		// 인애
		List<Report> list = null;
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ReportMapper mapper = session.getMapper(ReportMapper.class);
			list = mapper.retrieveAllReport();
			session.commit();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public boolean createReport(Report report) { // 2017.11.24 인애 추가 for 신고 생성
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ReportMapper mapper = session.getMapper(ReportMapper.class);
			mapper.createReport(report);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}


}
