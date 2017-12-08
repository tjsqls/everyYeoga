package everyYeoga.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.Report;

public interface ReportMapper {
	public Report retrieveReportDetail(String reportId);
	public List<Report> retrieveReport(String reportedUserId);
	public List<Report> retrieveAllReport();
	public boolean createReport(Report report); // 2017.11.24 인애 추가 for 신고 생성
}
