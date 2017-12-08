package everyYeoga.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.Comment;

public interface CommentMapper {
	public boolean createComment(@Param("groupId") String groupId, @Param("articleId") String articleId, @Param("comment") Comment comment);
	public boolean updateComment(Comment comment);
	public boolean deleteComment(String commentId);
	public boolean deleteCommentReport(String commentId);
	public boolean deleteCommentByArticleId(String articleId); 
	public void deleteCommentByGroupId(String groupId);
	public List<Comment> retrieveComment(String articleId);
	public Comment retreiveCommentByCommentId(String commentId);
}
