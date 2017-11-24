package everyYeoga.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;
import everyYeoga.domain.Comment;
import everyYeoga.domain.Group;
import everyYeoga.service.GroupService;
import everyYeoga.store.ArticleStore;
import everyYeoga.store.CommentStore;
import everyYeoga.store.GroupStore;
import everyYeoga.store.HistoryStore;


@Service
public class GroupServiceLogic implements GroupService{
	
	@Autowired
	private ArticleStore articleStore;
	@Autowired
	private CommentStore commentStore;
	@Autowired
	private GroupStore groupStore;
	@Autowired
	private HistoryStore historyStore;

	
	@Override
	public boolean modifyGroupStatus(String travelPlanId, String gatheringStatus) {
		// 선빈
		return groupStore.updateGroupStatus(travelPlanId, gatheringStatus);
	}

	@Override
	public boolean groupOut(String groupId, String userId) {
		// 선빈
		groupStore.groupOut(groupId, userId);
		groupStore.deleteUserInGroup(groupId, userId);
		
		return false;
	}

	@Override
	public boolean removeGroup(String groupId) {
		// 선빈
		groupStore.deleteGroup(groupId);
		articleStore.deleteArticleBygroupId(groupId);
		commentStore.deleteCommentByGroupId(groupId);
		List<String> userIds = groupStore.retrieveJoiningUserId(groupId);
		
		return false;
	}

	@Override
	public Group retreiveJoiningGroup(String travelPlanId) {
		// 선빈
		Group group = groupStore.retreiveJoiningGroup(travelPlanId);
		return group;
	}

	@Override
	public boolean registArticle(Article article, String groupId, List<Attachment> attachments) {
		// 선빈
		articleStore.createArticle(groupId, article);
		for(int i=0; i<attachments.size(); i++) {
			articleStore.createAttachment(groupId, article.getArticleId(), attachments.get(i));	
		}
		
		return false;
	}

	@Override
	public boolean modifyArticle(Article article) {
		// 선빈
		return articleStore.updateArticle(article);
	}

	@Override
	public boolean removeArticle(String articleId) {
		// 선빈
		articleStore.deleteArticle(articleId);
		commentStore.deleteCommentByArticleId(articleId);
		articleStore.deleteAttachment(articleId);
		
		return false;
	}

	@Override
	public Article retreiveArticleByArticleId(String articleId) {
		// 선빈
		return articleStore.retreiveArticleByArticleId(articleId);
	}

	@Override
	public boolean registComment(String groupId, String articleId, Comment comment) {
		// 선빈
		return commentStore.createComment(groupId, articleId, comment);
	}

	@Override
	public boolean modifyComment(Comment comment) {
		// 선빈
		return commentStore.updateComment(comment);
	}

	@Override
	public boolean removeComment(String commentId) {
		// 선빈
		return commentStore.deleteComment(commentId);
	}

	@Override
	public void registUserInGroup(String groupId, List<String> userIds) {
		// 선빈
		for(int i=0; i<userIds.size(); i++) {
		groupStore.createUserInGroup(groupId, userIds.get(i));
		}
	}

}
