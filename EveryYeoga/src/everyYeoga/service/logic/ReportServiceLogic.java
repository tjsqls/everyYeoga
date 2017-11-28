package everyYeoga.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.Report;
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
			commentStore.createReport(report.getClassifyReport(), classifyId);
			userStore.updateReportedNumber(userId);
			if (userStore.countReportedNumber(userId).equals("3")) {
				userStore.updateBlockedNumber(userId);
			}
			

		} else if (report.getClassifyReport().equals("article")) {
			articleStore.createReport(report.getClassifyReport(), classifyId);
			userStore.updateReportedNumber(userId);
			if(userStore.countReportedNumber(userId).equals("3")) {
				userStore.updateBlockedNumber(userId);
			}

			return reportStore.createReport(report);
		}
		return true;
	}
}