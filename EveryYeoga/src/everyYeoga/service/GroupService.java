package everyYeoga.service;

import java.util.List;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;
import everyYeoga.domain.Comment;
import everyYeoga.domain.Group;

public interface GroupService {
	public boolean modifyGroupStatus(String travelPlanId, String gatheringStatus); //2017.11.24 gatheringStatus 파라미터추가 선빈
	public boolean groupOut(String groupId, String userId);
	public boolean removeGroup(String groupId);
	public Group retreiveJoiningGroup(String travelPlanId);
	public boolean registArticle(Article article, String groupId, List<Attachment> attachments);
	public boolean modifyArticle(Article article);
	public boolean removeArticle(String articleId);
	public Article retreiveArticleByArticleId(String articleId);
	public boolean registComment(String groupId, String articleId, Comment comment);
	public boolean modifyComment(Comment comment);
	public boolean removeComment(String commentId);
	public void registUserInGroup(String groupId, String userId);

}
