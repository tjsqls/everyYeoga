package everyYeoga.service.logic;

import java.util.List;

import org.springframework.stereotype.Service;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;
import everyYeoga.domain.Comment;
import everyYeoga.domain.Group;
import everyYeoga.service.GroupService;

@Service
public class GroupServiceLogic implements GroupService{

	@Override
	public boolean modifyGroupStatus(String travelPlanId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean groupOut(String groupId, String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeGroup(String groupId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Group retreiveJoiningGroup(String travelPlanId) {
		// TODO Auto-generated method stub
		return null;
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
