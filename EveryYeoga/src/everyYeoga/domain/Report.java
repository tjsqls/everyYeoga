package everyYeoga.domain;

import java.util.Date;

public class Report {

	private String reportId;
	private String classifyReport;   // 신고 구분 ( 댓글인지 게시글인지)
	private String reportType;       // 신고 분류
	private String classifyId;       // articleId or commentId 저장하는곳 
	private String reportReason;
	private Date regDate;
	
	private User reportUser;         // 신고한 회원
	private User reportedUser;       // 신고 받은 회원
	
	
	public String getReportId() {
		return reportId;
	}
	public void setReportId(String reportId) {
		this.reportId = reportId;
	}
	public String getClassifyReport() {
		return classifyReport;
	}
	public void setClassifyReport(String classifyReport) {
		this.classifyReport = classifyReport;
	}
	public String getReportType() {
		return reportType;
	}
	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
	public String getReportReason() {
		return reportReason;
	}
	public void setReportReason(String reportReason) {
		this.reportReason = reportReason;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public User getReportUser() {
		return reportUser;
	}
	public void setReportUser(User reportUser) {
		this.reportUser = reportUser;
	}
	public User getReportedUser() {
		return reportedUser;
	}
	public void setReportedUser(User reportedUser) {
		this.reportedUser = reportedUser;
	}
	public String getClassifyId() {
		return classifyId;
	}
	public void setClassifyId(String classifyId) {
		this.classifyId = classifyId;
	}
	
	
}
