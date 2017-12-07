package everyYeoga.service.logic;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;
import everyYeoga.domain.Comment;
import everyYeoga.domain.Group;
import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelPlan;
import everyYeoga.domain.TravelerHistory;
import everyYeoga.domain.User;
import everyYeoga.service.GroupService;
import everyYeoga.store.ArticleStore;
import everyYeoga.store.CommentStore;
import everyYeoga.store.GroupStore;
import everyYeoga.store.HistoryStore;
import everyYeoga.store.TravelStore;
import everyYeoga.store.UserStore;

@Service
public class GroupServiceLogic implements GroupService {

	@Autowired
	private ArticleStore articleStore;
	@Autowired
	private CommentStore commentStore;
	@Autowired
	private GroupStore groupStore;
	@Autowired
	private UserStore userStore;
	@Autowired
	private TravelStore travelStore;
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
		if (travelStore.retrieveTravelPlan(groupId).getTravelerId().equals(userId)) {
			if (groupStore.retreiveJoiningGroup(groupId) != null) {
				groupStore.deleteGroup(groupId);
				articleStore.deleteArticleBygroupId(groupId);
				commentStore.deleteCommentByGroupId(groupId);
				List<String> userIds = groupStore.retrieveJoiningUserId(groupId);
				for (int i = 0; i < userIds.size(); i++) {
					groupStore.groupOut(groupId, userIds.get(i));
				}
				return true;
			}
		}
		return groupStore.groupOut(groupId, userId);

	}

	@Override
	public boolean removeGroup(String userId, String groupId) {
		// 선빈
		TravelPlan travelPlan = travelStore.retrieveTravelPlan(groupId);
		if (travelPlan.getTravelerId().equals(userId)) {
			if (groupStore.retreiveJoiningGroup(groupId) != null) {
				groupStore.deleteGroup(groupId);
				articleStore.deleteArticleBygroupId(groupId);
				commentStore.deleteCommentByGroupId(groupId);
				List<String> userIds = groupStore.retrieveJoiningUserId(groupId);
				TravelerHistory travelerHistory = new TravelerHistory();
				travelerHistory.setEndDate(travelPlan.getEndDate());
				travelerHistory.setGuideName(userIds.get(0));
				travelerHistory.setStartDate(travelPlan.getStartDate());
				travelerHistory.setTheme(travelPlan.getTheme());
				travelerHistory.setTravelArea(travelPlan.getTravelArea());
				travelerHistory.setTraveler(userStore.retrieveByUserId(userId));
	
				for (int i = 0; i < userIds.size(); i++) {
					if(groupStore.retrieveJoiningUserId(groupId).get(i).equals("미확인")) {
						historyStore.updateGuideHistory(travelPlan.getTravelerId(), userIds.get(i), "확인");
					}
					GuideHistory guideHistory = new GuideHistory();
					groupStore.groupOut(groupId, userIds.get(i));
					guideHistory.setEndDate(travelPlan.getEndDate());
					guideHistory.setGuide(userStore.retrieveByUserId(userIds.get(i)));
					guideHistory.setStartDate(travelPlan.getStartDate());
					guideHistory.setTheme(travelPlan.getTheme());
					guideHistory.setTravelArea(travelPlan.getTravelArea());
					guideHistory.setTravelEndStatus("확인");
					guideHistory.setTravelerName(userId);
					historyStore.createGuideHistory(guideHistory);
				}//end for
				historyStore.createTravelerHistory(travelerHistory);
				return true;
			}//end if
		}else {
			GuideHistory guideHistory = new GuideHistory();
			guideHistory.setEndDate(travelPlan.getEndDate());
			guideHistory.setGuide(userStore.retrieveByUserId(userId));
			guideHistory.setStartDate(travelPlan.getStartDate());
			guideHistory.setTheme(travelPlan.getTheme());
			guideHistory.setTravelArea(travelPlan.getTravelArea());
			guideHistory.setTravelEndStatus("미확인");
			guideHistory.setTravelerName(userId);
			historyStore.createGuideHistory(guideHistory);
			return true;
		}//end else
		return false;
	}

	@Override
	public Group retreiveJoiningGroup(String travelerId, String travelPlanId) {
		// 선빈
		TravelPlan travelPlan = travelStore.retrieveTravelPlan(travelPlanId);
		User traveler = new User();
		Group group = groupStore.retreiveJoiningGroup(travelPlanId);
		List<String> userIds = groupStore.retrieveJoiningUserId(travelPlanId);

		if (travelPlan.getTravelerId().equals(travelerId)) {
			traveler = userStore.retrieveByUserId(travelerId);
		}
		List<User> guides = new ArrayList<User>();
		for (int i = 0; i < userIds.size(); i++) {
			if (!userIds.get(i).equals(traveler.getId())) {
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
		if (article != null) {
			Date today = new Date(Calendar.getInstance().getTimeInMillis());
			article.setRegDate(today);
			articleStore.createArticle(article);
			String articleId = article.getArticleId();
			if(attachments != null) {
			for (int i = 0; i < attachments.size(); i++) {
				articleStore.createAttachment(groupId, articleId, attachments.get(i));
			}
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
		if (articleStore.retreiveArticleByArticleId(articleId) != null) {
			articleStore.deleteArticle(articleId);
			articleStore.deleteArticleReport(articleId);
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
		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		comment.setRegDate(today);
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
		commentStore.deleteCommentReport(commentId);
		return commentStore.deleteComment(commentId);
	}

	@Override
	public void registUserInGroup(String groupId, List<String> userIds) {
		// 선빈
		for (int i = 0; i < userIds.size(); i++) {
			groupStore.createUserInGroup(groupId, userIds.get(i));
		}
	}

	@Override
	public void registGroup(String travelPlanId) {
		// 선빈
		Group group = new Group();
		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		group.setRegDate(today);
		group.setTravelPlanId(travelPlanId);
		group.setGroupId(travelPlanId);
		groupStore.createGroup(group);

	}

	public Comment retreiveCommentByCommentId(String commentId) {
		// 인애 2017.11.27 추가
		return commentStore.retreiveCommentByCommentId(commentId);
	}

	@Override
	public List<Article> searchAll(String groupId) {
		// 선빈
		List<Article> list = articleStore.retreiveAll(groupId);
		return list;
	}

	@Override
	public List<Group> retrieveJoiningGroupAll(String userId) {
		// 선빈

		return groupStore.retrieveJoiningGroupAll(userId);
	}

	@Override
	public List<String> searchJoiningUserId(String groupId) {
		// 선빈
		return groupStore.retrieveJoiningUserId(groupId);
	}

	@Override
	public List<Attachment> searchAttachmentByArticleId(String articleId) {
		// 선빈
		return articleStore.retreiveAttachmentByArticleId(articleId);
	}
	
}
