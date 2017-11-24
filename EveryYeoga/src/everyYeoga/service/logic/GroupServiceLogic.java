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

@Service
public class GroupServiceLogic implements GroupService{
	
	@Autowired
	private ArticleStore articleStore;
	
	@Autowired
	private CommentStore commentStore;
	
	@Autowired
	private GroupStore groupStore;
	
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
	public boolean removeGroup(String groupId) {
		// 선빈
		groupStore.deleteGroup(groupId);
		articleStore.deleteArticleBygroupId(groupId);
		commentStore.deleteCommentByGroupId(groupId);
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
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modifyArticle(Article article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeArticle(String articleId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Article retreiveArticleByArticleId(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean registComment(String groupId, String articleId, Comment comment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modifyComment(Comment comment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeComment(String commentId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void registUserInGroup(String groupId, String userId) {
		// TODO Auto-generated method stub
		
	}

}
