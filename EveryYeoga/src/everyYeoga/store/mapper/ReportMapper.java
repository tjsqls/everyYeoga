package everyYeoga.store.mapper;

import java.util.List;

import everyYeoga.domain.Report;

public interface ReportMapper {
	public Report retrieveArticleReport(String reportedArticleId);
	public Report retrieveCommentReport(String reportedCommentId);
	public List<Report> retrieveReport(String reportedUserId);
	public List<Report> retrieveAllReport();
	public boolean createReport(Report report); // 2017.11.24 인애 추가 for 신고 생성
}
