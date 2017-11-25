package everyYeoga.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.Article;
import everyYeoga.domain.Group;
import everyYeoga.service.GroupService;



@Controller
@RequestMapping("article")
public class ArticleController {
	
	@Autowired
	private GroupService groupService;
	
//	@RequestMapping(value="regist.do", method=RequestMethod.GET)
//	public String registArticle(String groupId, Model model) {
//		
//		groupService.retreiveJoiningGroup(travelerId, travelPlanId)
//		model.addAttribute("boards", boards);
//		model.addAttribute("boardDetail", boardDetail);
//		model.addAttribute("boardId", boardId);
//		return "article/articleWrite";
//	}
//	
//	@RequestMapping(value="regist.do", method=RequestMethod.POST)
//	public ModelAndView registArticle(Article article, HttpServletRequest req, @RequestParam("fileName")List<String> fileNames, @RequestParam("file")List<MultipartFile> files) {
//		groupService.registArticle(article, req.getParameter("groupId"), attachments);
//		return "redirect:/board/find.do?boardId="+article.getBoardId();
//	}
	
//	@RequestMapping(value="articleDetail.do", method=RequestMethod.GET)
//	public String searchArticleDetail(String articleId, Model model) {
//		Article article = groupService.retreiveArticleByArticleId(articleId);
//		
//		Group group = groupService.retreiveJoiningGroup(article.getUser().getId(), travelPlanId);
//		model.addAttribute("article", article);
//		return "article/articleDetail";
//	}
	
}
