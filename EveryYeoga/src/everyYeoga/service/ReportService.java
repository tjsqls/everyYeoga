package everyYeoga.service;

import java.util.List;

import everyYeoga.domain.Report;

public interface ReportService {
	public Report searchArticleReport(String reportedArticleId);
	public Report searchCommentReport(String reportedCommentId);
	public List<Report> searchReport(String reportedUserId);
	public List<Report> searchAllReport();
	public boolean registMidReportTable(String classifyReport, String classifyId);
	public boolean registReport(Report report); // 2017.11.24 인애 추가 for 신고 생성
}
