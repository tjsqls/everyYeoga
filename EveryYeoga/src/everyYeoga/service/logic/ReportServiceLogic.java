package everyYeoga.service.logic;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.Report;
import everyYeoga.service.ReportService;
import everyYeoga.store.ArticleStore;
import everyYeoga.store.CommentStore;
import everyYeoga.store.ReportStore;

@Service
public class ReportServiceLogic implements ReportService {

	@Autowired
	private ReportStore reportStore;
	@Autowired
	private CommentStore commentStore;
	@Autowired
	private ArticleStore articleStore;
	
	@Test
	public void testSearchReport() {
		List<Report> list = reportStore.retrieveReport("3");
		assertEquals("1", list.size());
				

	}

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
	public boolean registReport(Report report, String classifyId) {   // classifyId is wether articleId or commentId. 
		// 인애	
		if (report.getClassifyReport().equals("comment")) {
		commentStore.createReport(report.getClassifyReport(), classifyId);
		
		}else if (report.getClassifyReport().equals("article")) {
			articleStore.createReport(report.getClassifyReport(), classifyId);
		}		
		return reportStore.createReport(report);
	}
}