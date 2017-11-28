package everyYeoga.service;

import java.util.List;


import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;
import everyYeoga.domain.Comment;
import everyYeoga.domain.Group;

public interface GroupService {
	public boolean modifyGroupStatus(String travelPlanId, String gatheringStatus); //2017.11.24 gatheringStatus 파라미터추가 선빈
	public boolean groupOut(String groupId, String userId);
	public boolean removeGroup(String userId, String groupId); //2017.11.24 파라미터추가 String userId 선빈
	public Group retreiveJoiningGroup(String travelerId,String travelPlanId); //2017.11.24 파라미터추가 String travelerId 선빈
	public boolean registArticle(Article article, String groupId, List<Attachment> attachments);
	public boolean modifyArticle(Article article);
	public boolean removeArticle(String articleId);
	public Article retreiveArticleByArticleId(String articleId);
	public boolean registComment(String groupId, String articleId, Comment comment);
	public boolean modifyComment(Comment comment);
	public boolean removeComment(String commentId);
	public void registUserInGroup(String groupId, List<String> userIds); //2017.11.24 파라미터변경 String userId-> List<String> userIds 선빈
	public Comment retreiveCommentByCommentId(String commentId); // 2017.11.27 인애 추가
	public void registGroup(String travelPlanId); //2017.11.24 메소드 추가 선빈 
	public List<Article> searchAll(String groupId); //2017.11.24 메소드 추가 선빈 
}
