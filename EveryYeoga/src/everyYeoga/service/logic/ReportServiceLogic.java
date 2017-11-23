package everyYeoga.service.logic;

import java.util.List;

import org.springframework.stereotype.Service;

import everyYeoga.domain.Report;
import everyYeoga.service.ReportService;

@Service
public class ReportServiceLogic implements ReportService {

	@Override
	public Report searchArticleReport(String reportedArticleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Report searchCommentReport(String reportedCommentId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Report> searchReport() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean registReport(String classifyReport, String classifyId) {
		// TODO Auto-generated method stub
		return false;
	}

}
