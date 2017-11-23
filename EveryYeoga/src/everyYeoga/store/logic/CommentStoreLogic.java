package everyYeoga.store.logic;

import java.util.List;

import org.springframework.stereotype.Repository;

import everyYeoga.domain.Comment;
import everyYeoga.store.CommentStore;

@Repository
public class CommentStoreLogic implements CommentStore{

	@Override
	public boolean createComment(String groupId, String articleId, Comment comment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateComment(Comment comment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteComment(String commentId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteCommentByArticleId(String articleId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void deleteCommentByGroupId(String groupId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Comment> retrieveComment(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean createReport(String classifyReport, String commentId) {
		// TODO Auto-generated method stub
		return false;
	}

}
