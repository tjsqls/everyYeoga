package everyYeoga.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;
import everyYeoga.domain.Group;
import everyYeoga.domain.User;
import everyYeoga.service.GroupService;

@Controller
@RequestMapping("article")
public class ArticleController {

	@Autowired
	private GroupService groupService;

	@RequestMapping(value = "regist.do", method = RequestMethod.GET)
	public String registArticle(String groupId, Model model) {
		model.addAttribute("groupId", groupId);
		return "article/registArticle";
	}

	@RequestMapping(value = "regist.do", method = RequestMethod.POST)
	public String registArticle(Article article, HttpServletRequest req, MultipartHttpServletRequest multipartRequest) {
		if(multipartRequest.getFileNames()!=null) {
		List<Attachment> attachments = new ArrayList<>();
		String filePath = "C:/tempFiles"; // 파일 저장 경로, 설정파일로 따로 관리한다.
		Iterator<String> itr = multipartRequest.getFileNames(); // 파일들을 Iterator 에 넣는다.
		Attachment attachment = new Attachment();
		while (itr.hasNext()) { // 파일을 하나씩 불러온다.
			MultipartFile mpf = multipartRequest.getFile(itr.next());
			String originalFilename = mpf.getOriginalFilename(); // 파일명
			String fileFullPath = filePath + "/" + originalFilename; // 파일 전체 경로
			try {
				attachment.setFileName(originalFilename);
				attachment.setFilePath(filePath);
				
				attachments.add(attachment);
				System.out.println(attachment.getFileName());
				System.out.println(attachment.getFilePath());	
			} catch (Exception e) {
				System.out.println("postTempFile_ERROR======>" + fileFullPath);
				e.printStackTrace();
			}
		}
		
		groupService.registArticle(article, article.getGroupId(), attachments);
		}
		return "redirect:/group/list.do?groupId="+article.getGroupId();
	}

	@RequestMapping(value = "/remove.do", method = RequestMethod.GET)
	public String removeArticle(HttpServletRequest req, String articleId) {
		// 선빈
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		Article article = groupService.retreiveArticleByArticleId(articleId);
		groupService.retreiveJoiningGroup(user.getId(), article.getGroupId());
		groupService.removeArticle(articleId);
		return "redirect:/Group/list.do?groupId=" + article.getGroupId();
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.GET)
	public String modifyArticle(String articleId, Model model) {
		// 선빈
		Article article = groupService.retreiveArticleByArticleId(articleId);
		model.addAttribute("article", article);
		model.addAttribute("user", article.getUser());
		return "article/modifyArticle";
	}

	@RequestMapping(value = "modify.do", method = RequestMethod.POST)
	public String modifyArticle(Article article) {
		// 선빈
		groupService.modifyArticle(article);
		return "redirect:/article/articleDetail.do?articleId=" + article.getArticleId();
	}

	@RequestMapping(value = "articleDetail.do", method = RequestMethod.GET)
	public String searchArticleDetail(String articleId, Model model) {
		// 선빈
		Article article = groupService.retreiveArticleByArticleId(articleId);
		List<Attachment> attachmentList = groupService.searchAttachmentByArticleId(articleId);
		model.addAttribute("article", article);
		model.addAttribute("user", article.getUser());
		model.addAttribute("attachmentList", attachmentList);
		model.addAttribute("comments", article.getComments());
		
		return "article/articleDetail";
	}

	@ResponseBody
	@RequestMapping(value = "save.do")
	public Object fileSave(MultipartHttpServletRequest multipartRequest) {
		// 선빈
		List<HashMap<String, String>> fileArrayList = new ArrayList<HashMap<String, String>>();
		HashMap<String, String> fileHashMap;

		String filePath = "C:/tempFiles"; // 파일 저장 경로, 설정파일로 따로 관리한다.

		File dir = new File(filePath); // 파일 저장 경로 확인, 없으면 만든다.
		if (!dir.exists()) {
			dir.mkdirs();
		}

		Iterator<String> itr = multipartRequest.getFileNames(); // 파일들을 Iterator 에 넣는다.

		while (itr.hasNext()) { // 파일을 하나씩 불러온다.
			MultipartFile mpf = multipartRequest.getFile(itr.next());
			fileHashMap = new HashMap<String, String>();
			String originalFilename = mpf.getOriginalFilename(); // 파일명
			String fileFullPath = filePath + "/" + originalFilename; // 파일 전체 경로
			try {
				// 파일 저장
				mpf.transferTo(new File(fileFullPath)); // 파일저장
				fileHashMap.put("originalFilename", originalFilename);
				fileHashMap.put("fileFullPath", fileFullPath);
				fileArrayList.add(fileHashMap);
			} catch (Exception e) {
				System.out.println("postTempFile_ERROR======>" + fileFullPath);
				e.printStackTrace();
			}
		}

		Map<String, Object> retVal = new HashMap<String, Object>(); // 응답값 셋팅

		try {
			retVal.put("fileInfoList", fileArrayList);
			retVal.put("code", "OK");
		} catch (Exception e) {
			retVal.put("code", "FAIL");
		}

		return retVal;

	}

}
