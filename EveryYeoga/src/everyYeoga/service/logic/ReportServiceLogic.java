package everyYeoga.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public boolean registReport(Report report, String classifyId) { // classifyId is whether articleId or commentId.
		// 인애
		String userId = report.getReportedUser().getId();
		if (report.getClassifyReport().equals("comment")) {
			commentStore.createReport(report.getClassifyReport(), classifyId);   // 중간테이블에 값 등록
			userStore.updateReportedNumber(userId);								// 신고 횟수 추가
			if (userStore.countReportedNumber(userId).equals("3")) { 			
				userStore.updateBlockedNumber(userId);							// 정지 횟수 추가
				userStore.updateAccessBlockedDate(userId);						// 30일 이용 정지
				if(userStore.countBlockedNumber(userId).equals("3")) {
					userStore.deleteUser(userId);								// 회원 탈퇴
				}
			}
			return reportStore.createReport(report);
			
		} else if (report.getClassifyReport().equals("article")) {
			articleStore.createReport(report.getClassifyReport(), classifyId);
			userStore.updateReportedNumber(userId);
			if(userStore.countReportedNumber(userId).equals("3")) {
				userStore.updateBlockedNumber(userId);
				userStore.updateAccessBlockedDate(userId);
				if(userStore.countBlockedNumber(userId).equals("3")) {
					userStore.deleteUser(userId);
				}
			}
			return reportStore.createReport(report);
		}
		return false;
	}
}