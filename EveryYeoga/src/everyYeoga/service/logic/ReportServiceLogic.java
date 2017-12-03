package everyYeoga.service.logic;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import everyYeoga.domain.Article;
import everyYeoga.domain.Report;
import everyYeoga.domain.User;
import everyYeoga.service.ReportService;
import everyYeoga.store.ArticleStore;
import everyYeoga.store.CommentStore;
import everyYeoga.store.ReportStore;
import everyYeoga.store.UserStore;

@Service
public class ReportServiceLogic implements ReportService {

	@Autowired
	private ReportStore reportStore;
	@Autowired
	private CommentStore commentStore;
	@Autowired
	private ArticleStore articleStore;
	@Autowired
	private UserStore userStore;

	@Override
	public Report searchArticleReport(String reportedArticleId) {
		// 인애
		return reportStore.retrieveArticleReport(reportedArticleId);
	}

	@Override
	public Report searchCommentReport(String reportedCommentId) {
		// 인애
		return reportStore.retrieveCommentReport(reportedCommentId);
	}

	@Override
	public List<Report> searchReport(String reportedUserId) {
		// 인애
		return reportStore.retrieveReport(reportedUserId);
	}

	@Override
	public List<Report> searchAllReport() {
		// 인애

		return reportStore.retrieveAllReport();
	}

	@Override
	public boolean registReport(Report report, String reportedUserId, String reportUserId) { // classifyId is whether
																								// articleId or
																								// commentId.
		User reportUser = userStore.retrieveByUserId(reportUserId);
		User reportedUser = userStore.retrieveByUserId(reportedUserId);

		report.setReportUser(reportUser);
		report.setReportedUser(reportedUser);
		return reportStore.createReport(report);
	}

	@Override
	public boolean acceptReport(Report report, String classifyId, @RequestParam("reportedUserId") String userId) {
		// 인애
		if (report.getClassifyReport().equals("comment")) {
			userStore.updateReportedNumber(userId); // 신고 횟수 추가
			if (userStore.countReportedNumber(userId).equals("3")) {
				userStore.updateBlockedNumber(userId); // 정지 횟수 추가
				userStore.updateAccessBlockedDate(userId); // 30일 이용 정지
				if (userStore.countBlockedNumber(userId).equals("3")) {
					userStore.deleteUser(userId); // 회원 탈퇴
				}
			}
			return commentStore.createReport(report.getClassifyReport(), classifyId); // 중간테이블에 값 등록

		} else if (report.getClassifyReport().equals("article")) {
			userStore.updateReportedNumber(userId);
			if (userStore.countReportedNumber(userId).equals("3")) {
				userStore.updateBlockedNumber(userId);
				userStore.updateAccessBlockedDate(userId);

				if (userStore.countBlockedNumber(userId).equals("3")) {
					userStore.deleteUser(userId);
				}
			}
			return articleStore.createReport(report.getClassifyReport(), classifyId);
		} else {
			return false;
		}
	}
}
