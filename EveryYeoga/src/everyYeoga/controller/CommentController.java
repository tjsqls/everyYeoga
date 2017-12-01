package everyYeoga.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import everyYeoga.domain.Comment;
import everyYeoga.domain.User;
import everyYeoga.service.GroupService;

@Controller
@RequestMapping("comment")
public class CommentController {

	@Autowired
	private GroupService groupService;
	
	@RequestMapping(value="/regist.do", method=RequestMethod.POST)
	public String registComment(HttpServletRequest req, String groupId, String articleId, Comment comment) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		comment.setUser(user);
		groupService.registComment(groupId, articleId, comment);
		return "redirect:/article/articleDetail.do?articleId="+articleId;
	}
	
	@RequestMapping(value="/remove.do", method=RequestMethod.GET)
	public String removeComment(String commentId, String articleId) {
		groupService.removeComment(commentId);
		return "redirect:/article/articleDetail.do?articleId="+articleId;
	} 
}
