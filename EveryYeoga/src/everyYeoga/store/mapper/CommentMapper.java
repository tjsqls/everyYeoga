package everyYeoga.store.mapper;

import java.util.List;

import everyYeoga.domain.Comment;

public interface CommentMapper {
	public boolean createComment(String groupId, String articleId, Comment comment);
	public boolean updateComment(Comment comment);
	public boolean deleteComment(String commentId);
	public boolean deleteCommentByArticleId(String articleId); 
	public void deleteCommentByGroupId(String groupId);
	public List<Comment> retrieveComment(String articleId);
	public boolean createReport(String classifyReport, String commentId);
}
