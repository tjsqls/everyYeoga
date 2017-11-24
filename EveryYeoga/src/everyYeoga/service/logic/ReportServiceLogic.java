package everyYeoga.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.Report;
import everyYeoga.service.ReportService;
import everyYeoga.store.ArticleStore;
import everyYeoga.store.CommentStore;
import everyYeoga.store.ReportStore;
import everyYeoga.store.logic.ArticleStoreLogic;
import everyYeoga.store.logic.CommentStoreLogic;
import everyYeoga.store.logic.ReportStoreLogic;

@Service
public class ReportServiceLogic implements ReportService {
	
	@Autowired
	private ReportStore reportStore;
	
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
	public boolean registMidReportTable(String classifyReport, String classifyId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean registReport(Report report) {
//		// 인애
//		CommentStore commentStore = new CommentStoreLogic();
//		ArticleStore articleStore = new ArticleStoreLogic();
//		
//		if (classifyId.equals("comment")) {
//			String commentId = classifyId;
//			return commentStore.createReport(classifyReport, commentId);
//		}else if (classifyId.equals("article")) {
//			String articleId = classifyId;
//			return articleStore.createReport(classifyReport, articleId);
//		}
		return false;	

}
}