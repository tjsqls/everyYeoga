package everyYeoga.service.logic;

import java.util.ArrayList;
import java.util.List;

import org.junit.FixMethodOrder;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;
import everyYeoga.domain.Comment;
import everyYeoga.domain.Group;
import everyYeoga.domain.User;
import everyYeoga.service.GroupService;
import everyYeoga.store.ArticleStore;
import everyYeoga.store.CommentStore;
import everyYeoga.store.GroupStore;
import everyYeoga.store.UserStore;


@Service
public class GroupServiceLogic implements GroupService{
	
	@Autowired
	private ArticleStore articleStore;
	@Autowired
	private CommentStore commentStore;
	@Autowired
	private GroupStore groupStore;
	@Autowired
	private UserStore userStore;
	
	@Override
	public boolean modifyGroupStatus(String travelPlanId, String gatheringStatus) {
		// 선빈
		return groupStore.updateGroupStatus(travelPlanId, gatheringStatus);
	}

	@Override
	public boolean groupOut(String groupId, String userId) {
		// 선빈
		return groupStore.groupOut(groupId, userId);
	}

	@Override
	public boolean removeGroup(String userId, String groupId) {
		// 선빈
		if(groupStore.retreiveJoiningGroup(groupId)!=null) {
		groupStore.deleteGroup(groupId);
		articleStore.deleteArticleBygroupId(groupId);
		commentStore.deleteCommentByGroupId(groupId);
		List<String> userIds = groupStore.retrieveJoiningUserId(groupId);
		for(int i=0; i<userIds.size(); i++) {
			groupStore.groupOut(groupId, userIds.get(i));
		}
		return true;
		}
		return false;
	}

	@Override
	public Group retreiveJoiningGroup(String travelerId, String travelPlanId) {
		// 선빈
		Group group = groupStore.retreiveJoiningGroup(travelPlanId);
		List<String> userIds = groupStore.retrieveJoiningUserId(travelPlanId);
		User traveler = userStore.retrieveByUserId(travelerId);
		List<User> guides = new ArrayList<User>();
		for(int i=0; i<userIds.size(); i++) {
			if(userIds.get(i) != traveler.getId()) {
				User guide = userStore.retrieveByUserId(userIds.get(i));
				guides.add(guide);
			}
		}
		group.setGuides(guides);
		group.setTraveler(traveler);
		List<Article> articles = articleStore.retreiveAll(travelPlanId);
		group.setArticles(articles);
		return group;
	}

	@Override
	public boolean registArticle(Article article, String groupId, List<Attachment> attachments) {
		// 선빈
		if(article!=null) {
		articleStore.createArticle(groupId, article);
		for(int i=0; i<attachments.size(); i++) {
			articleStore.createAttachment(groupId, article.getArticleId(), attachments.get(i));	
		}
		return true;
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
		if(articleStore.retreiveArticleByArticleId(articleId)!=null) {
		articleStore.deleteArticle(articleId);
		commentStore.deleteCommentByArticleId(articleId);
		articleStore.deleteAttachment(articleId);
		return true;
		}
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

	@Override
	public void registGroup(Group group) {
		// 선빈
		groupStore.createGroup(group);
	}

}
