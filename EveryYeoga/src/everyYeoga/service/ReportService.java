package everyYeoga.service;

import java.util.List;

import everyYeoga.domain.Report;

public interface ReportService {
	public Report searchArticleReport(String reportedArticleId);
	public Report searchCommentReport(String reportedCommentId);
	public List<Report> searchReport();
	public boolean registReport(String classifyReport, String classifyId);

}
