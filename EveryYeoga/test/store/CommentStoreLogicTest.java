package store;

import static org.junit.Assert.*;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import everyYeoga.domain.Comment;
import everyYeoga.domain.Report;
import everyYeoga.domain.User;
import everyYeoga.store.CommentStore;
import everyYeoga.store.logic.CommentStoreLogic;
import everyYeoga.store.logic.ReportStoreLogic;

public class CommentStoreLogicTest {
	
	CommentStore store;

	@Before
	public void setUp(){
		store = new CommentStoreLogic();
	}

	@Test
	public void testCreateComment() {
//		인애
//		Comment c = new Comment();
//		User user = new User();
//		user.setId("3");
//		user.setName("3");
//		user.setBirthDate("22");
//		user.setEmail("44");
//		Date today = new Date(Calendar.getInstance().getTimeInMillis());
//		c.setContent("hello");
//		c.setRegDate(today);
//		c.setUser(user);
//		store.createComment("3", "4", c);
	}

	@Test
	public void testUpdateComment() {
//		List<Comment> list = store.retrieveComment("2");
//		Comment c = list.get(0);
//		
//		c.setContent("updated");
//		store.updateComment(c);
	}

	@Test
	public void testDeleteComment() {
		//인애
		//store.deleteComment("1");
	}

	@Test
	public void testDeleteCommentByArticleId() {
		//인애
		//store.deleteCommentByArticleId("2");
	}

	@Test
	public void testDeleteCommentByGroupId() {
		//인애
		//store.deleteCommentByGroupId("3");
	}

	@Test
	public void testRetrieveComment() {
		// 인애
//		List<Comment> list = store.retrieveComment("1");
//		
//		assertNotNull(list);
//		assertEquals(list.size(), 1);
	}

	@Test
	public void testCreateReport() {
//		인애
//		Report report = new Report();
//		Comment comment = new Comment();
//
//		report.setClassifyReport("comment");
//		comment.setCommentId("9");
//		
//		store.createReport(report.getClassifyReport(), comment.getCommentId());
	}
	
	@Test
	public void testRetrieveCommentByCommentId() {
//		Comment comment = store.retreiveCommentByCommentId("7");
//		assertEquals(comment.getContent(), "new");
	}
}
