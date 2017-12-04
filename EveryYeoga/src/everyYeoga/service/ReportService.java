package everyYeoga.service;

import java.util.List;

import everyYeoga.domain.Report;

public interface ReportService {
	public Report searchArticleReport(String reportedArticleId);
	public Report searchCommentReport(String reportedCommentId);
	public List<Report> searchReport(String reportedUserId);
	public List<Report> searchAllReport();
	public boolean registReport(Report report, String reportedUserId, String reportUserId); 
	public boolean acceptReport(Report report, String classifyId, String userId); // 2017.12.02 메소드 추가 인애
}
