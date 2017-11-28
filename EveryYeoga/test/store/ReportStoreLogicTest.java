package store;

import static org.junit.Assert.*;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import everyYeoga.domain.Report;
import everyYeoga.domain.User;
import everyYeoga.store.ReportStore;
import everyYeoga.store.logic.ReportStoreLogic;

public class ReportStoreLogicTest {

	private ReportStore store;
	
	@Before
	public void setUp() {
		store = new ReportStoreLogic();
	}

	@Test
	public void testRetrieveArticleReport() {
	//인애
//		Report report = store.retrieveArticleReport("1");
//		assertNotNull(report);
//		assertEquals("도배", report.getReportReason());
	}

	@Test
	public void testRetrieveCommentReport() {
		//인애
//		Report report = store.retrieveCommentReport("7");
//
//		assertNotNull(report);
//		assertEquals("도배", report.getReportReason());
	}

	@Test
	public void testRetrieveReport() {
		//인애
//		List<Report> list = store.retrieveReport("22");
//		
//		assertEquals(list.get(1).getReportReason(), "음란");
	}

	@Test
	public void testRetrieveAllReport() {
//		인애
//		List<Report> list = store.retrieveAllReport();
//		assertNotNull(list);
//		assertEquals(list.size(), 1);
	}
	
	@Test
	public void testCreateReport() {
//	Report report = new Report();
//	
//	User user = new User();
//	user.setId("3");
//
//	User user1 = new User();
//	user1.setId("77");
//	
//	Date today = new Date(Calendar.getInstance().getTimeInMillis());
//	
//	report.setClassifyReport("도배");
//	report.setReportReason("dddd");
//	report.setReportType("hi");
//	report.setRegDate(today);
//	report.setReportedUser(user);
//	report.setReportUser(user1);
//	
//	store.createReport(report);
	}
	
}
