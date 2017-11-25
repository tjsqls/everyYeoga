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

import everyYeoga.domain.Report;
import everyYeoga.domain.User;
import everyYeoga.service.ReportService;
import everyYeoga.service.UserService;


@Controller
@RequestMapping("report")     	        // 인애
public class ReportController {

	@Autowired
	private ReportService reportService;
	private UserService userService;
	
	
	@RequestMapping(value = "/regist.do", method = RequestMethod.GET)
	public String registReport(HttpServletRequest req, String classifyReport, String classifyId, String userId, Model model) {
		
		HttpSession session = req.getSession();
		if(session == null || session.getAttribute("xxxxxxxxxxx") == null) {     // 저장한 이름 넣기
			return "redirect:login";  
		}
		
		User user = (User)session.getAttribute("xxxxxxxxxxxx");    // 저장한 이름 넣기
		model.addAttribute("user", user);
		model.addAttribute("classifyReport", classifyReport);
		
		return "redirect:report";  /* 신고 작성 페이지로 이동 */
	}
	
	@RequestMapping(value = "/regist.do", method = RequestMethod.POST)
	public String registReport(Report report) {
		
		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		
		report.setRegDate(today);
		report.setReportUser(userService.searchByUserId(""));
		report.setReportedUser(userService.searchByUserId(""));
		
		reportService.registReport(report, "classifyId");
		
		return "redirect:groupMain";  /* 모임 메인 */
	}	
	
	@RequestMapping("searchArticle.do") /* 인애 - 2017.11.25 article search 파라미터 String groupId 뺌  */
	public ModelAndView searchArticleReport(@RequestParam("articleId")String reportedArticleId) { //jsp에서 넘어오는  값의이름이 articleId (?)

		Report articleReportDetail = reportService.searchArticleReport(reportedArticleId);
	
		ModelAndView modelAndView = new ModelAndView("reportDetail");    //  report detail (상세 신고내역) 나오는 페이지 이름
		modelAndView.addObject("articleReport", articleReportDetail);
		
		return modelAndView;
	}
	
	/*   ↑ 신고 상세내역 보는 곳 ↓  */
	
	@RequestMapping("searchComment.do")
	public ModelAndView searchCommentReport(@RequestParam("commentId")String reportedCommentId) {  //jsp에서 넘어오는  값의이름이 commentId (?)
		
		Report commentReportDetail = reportService.searchCommentReport(reportedCommentId);
		
		ModelAndView modelAndView = new ModelAndView("reportDetail");    // report detail (상세 신고내역) 나오는 페이지 이름
		modelAndView.addObject("commentReport", commentReportDetail);
		
		return modelAndView;
	}
	@RequestMapping("searchAll.do")
	public ModelAndView searchReportList() {
	
		List<Report> list = reportService.searchAllReport();
		ModelAndView modelAndView = new ModelAndView("adminPage"); // 모든 신고내역 보는곳 : 관리자페이지
		modelAndView.addObject("reportList", list);
		
		return modelAndView;
	}
}
