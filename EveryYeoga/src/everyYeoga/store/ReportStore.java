package everyYeoga.store;

import java.util.List;

import everyYeoga.domain.Report;

public interface ReportStore {
	public Report retrieveReportDetail(String reportId);    //관리자가 특정 신고내역 보는거
	public List<Report> retrieveReport(String reportedUserId);  // 특정 유저의 신고 내역 보는거
	public List<Report> retrieveAllReport();
	public boolean createReport(Report report); // 2017.11.24 인애 추가 for 신고 생성	
}
