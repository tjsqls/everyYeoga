package everyYeoga.store;

import java.util.List;

import everyYeoga.domain.Report;

public interface ReportStore {
	public Report retrieveArticleReport(String reportedArticleId);
	public Report retrieveCommentReport(String reportedCommentId);
	public List<Report> retrieveReport(String reportedUserId);
	public List<Report> retrieveAllReport();
	public boolean createMidReportTable(String classifyReport, String classifyId);
	public boolean createReport(Report report); // 2017.11.24 인애 추가 for 신고 생성
}
