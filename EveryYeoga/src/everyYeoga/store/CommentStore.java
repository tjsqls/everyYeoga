package everyYeoga.store;

import java.util.List;

import everyYeoga.domain.Comment;

public interface CommentStore {
	public boolean createComment(String groupId, String articleId, Comment comment);
	public boolean updateComment(Comment comment);
	public boolean deleteComment(String commentId);
	public boolean deleteCommentReport(String commentId); // 2017.12.01 인애 추가
	public boolean deleteCommentByArticleId(String articleId); 
	public void deleteCommentByGroupId(String groupId);
	public List<Comment> retrieveComment(String articleId);
	public Comment retreiveCommentByCommentId(String commentId);
}
