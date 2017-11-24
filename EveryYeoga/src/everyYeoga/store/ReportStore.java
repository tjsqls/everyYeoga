package everyYeoga.store;

import java.util.List;

import everyYeoga.domain.Report;

public interface ReportStore {
	public Report retrieveArticleReport(String reportedArticleId);
	public Report retrieveCommentReport(String reportedCommentId);
	public List<Report> retrieveReport(String reportedUserId);
	public List<Report> retrieveAllReport();
}
