package everyYeoga.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.Article;
import everyYeoga.domain.Report;
import everyYeoga.domain.User;
import everyYeoga.service.GroupService;
import everyYeoga.service.ReportService;
import everyYeoga.service.UserService;


@Controller
@RequestMapping("report") 
public class ReportController {

	@Autowired
	private ReportService reportService;
	@Autowired
	private GroupService groupService;
	@Autowired
	private UserService userService;
	

	@RequestMapping(value = "regist.do", method = RequestMethod.GET)
	public String registReport(HttpServletRequest req, String classifyReport, String classifyId, String userId, Model model) { // userId = 신고당한 회원

		HttpSession session = req.getSession();
		if (session == null || session.getAttribute("loginedUser") == null) {
			return "redirect:/views/user/login.jsp";
		}

		User reportUser = (User) session.getAttribute("loginedUser");
		model.addAttribute("reportUser", reportUser);  // 신고한 회원

		if (classifyReport.equals("article")) {
			model.addAttribute("report", groupService.retreiveArticleByArticleId(classifyId)); // classifyId =  comment/article 의 id																									

		} else if (classifyReport.equals("comment")) {			
			model.addAttribute("report", groupService.retreiveCommentByCommentId(classifyId));
		}
		return "redirect:/views/report/report"; /* 신고 작성 페이지로 이동 */
	}

	@RequestMapping(value = "regist.do", method = RequestMethod.POST)
	public String registReport(Report report) {

		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		report.setRegDate(today);

		reportService.registReport(report, report.getClassifyId());

		return "redirect:/group/list.do"; /* 모임 메인 */
	}

	@RequestMapping("searchArticle.do") /* 인애 - 2017.11.25 article search 파라미터 String groupId 뺌 */
	public ModelAndView searchArticleReport(@RequestParam("articleId") String reportedArticleId) { // jsp에서 넘어오는 값의이름이 articleId 면 두고 아니면 빼기																						

		Report articleReportDetail = reportService.searchArticleReport(reportedArticleId);

		ModelAndView modelAndView = new ModelAndView("/report/reportDetail"); // report detail (상세 신고내역)
		modelAndView.addObject("articleReport", articleReportDetail);

		return modelAndView;
	}

	/* ↑ 신고 상세내역 보는 곳 ↓ */

	@RequestMapping("searchComment.do")
	public ModelAndView searchCommentReport(@RequestParam("commentId") String reportedCommentId) { // jsp에서 넘어오는 값의이름이 commentId 면 두고 아니면 빼기

		Report commentReportDetail = reportService.searchCommentReport(reportedCommentId);

		ModelAndView modelAndView = new ModelAndView("/report/reportDetail"); // report detail (상세 신고내역)
		modelAndView.addObject("commentReport", commentReportDetail);

		return modelAndView;
	}
	
	@RequestMapping("searchUserReport.do")
	public ModelAndView searchReport(String reportedUserId) {  // 2017.11.29 컨트롤러 빠져잇어서 추가 인애
		List<Report> list = reportService.searchReport(reportedUserId);

		ModelAndView modelAndView = new ModelAndView("/report/reportList"); 
		modelAndView.addObject("userReport", list);
		
		return modelAndView;
	}

	@RequestMapping("searchAll.do")
	public ModelAndView searchReportList() {

		
		List<Report> list = reportService.searchAllReport();
		ModelAndView modelAndView = new ModelAndView("/user/adminPage"); // 모든 신고내역 보는곳 : 관리자페이지
		modelAndView.addObject("reportList", list);

		return modelAndView;
	}
	
	@RequestMapping(value="remove.do", method=RequestMethod.POST)
	public String removeComment(Report report) {
		if(report.getClassifyReport().equals("article")) {
			groupService.removeArticle(report.getClassifyId());
		}else {
		groupService.removeComment(report.getClassifyId());
		}
		return "redirect:/report/searchAll.do";
	}
}
