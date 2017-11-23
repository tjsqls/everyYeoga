package everyYeoga.store.logic;

import java.util.List;

import org.springframework.stereotype.Repository;

import everyYeoga.domain.Report;
import everyYeoga.store.ReportStore;

@Repository
public class ReportStoreLogic implements ReportStore{

	@Override
	public Report retrieveArticleReport(String reportedArticleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Report retrieveCommentReport(String reportedCommentId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Report> retrieveReport() {
		// TODO Auto-generated method stub
		return null;
	}

}
