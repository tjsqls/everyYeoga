package everyYeoga.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import everyYeoga.domain.Article;
import everyYeoga.domain.Comment;
import everyYeoga.service.GroupService;

@Controller
@RequestMapping("comment")
public class CommentController {

	@Autowired
	private GroupService groupService;

	@RequestMapping(value = "regist.do", method = RequestMethod.POST)
	public String registComment(String articleId, Comment comment, Model model) {
		groupService.registComment("1", articleId, comment);
		Article article = groupService.retreiveArticleByArticleId(articleId);
		model.addAttribute("article", article);
		return "article/articleDetail.do?articleId=" + articleId;
	}

	@RequestMapping(value = "remove.do")
	public String removeComment(String commentId, String articleId, Model model) {
		groupService.removeComment(commentId);
		Article article = groupService.retreiveArticleByArticleId(articleId);
		model.addAttribute("article", article);
		return "article/articleDetail.do?articleId=" + articleId;
	}
}
