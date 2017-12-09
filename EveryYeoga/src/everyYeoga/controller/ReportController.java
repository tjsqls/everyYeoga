package everyYeoga.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	public String registReport(HttpServletRequest req, String classifyReport, String userId, String classifyId,
			Model model, HttpServletResponse response) { // userId = 신고할 회원

		List<Report> list = reportService.searchReport(userId);
		for (int i = 0; i < list.size(); i++) {

			if (list.get(i).getClassifyId().equals(classifyId) && list.get(i).getClassifyReport().equals(classifyReport)) {
				response.setContentType("text/html; charset=UTF-8");
			     PrintWriter writer;
				try {
					writer = response.getWriter();
					writer.println("<script>alert('이미 신고 처리중인 신고물 입니다.');</script>");
					writer.flush();
					
				} catch (IOException e) {
					e.printStackTrace();
				}			     
			} else {

				HttpSession session = req.getSession();
				Report report = new Report();

				User reportUser = (User) session.getAttribute("loginedUser");
				model.addAttribute("reportUser", reportUser); // 신고한 회원
				model.addAttribute("reportedUser", userService.searchByUserId(userId));

				report.setClassifyReport(classifyReport);
				report.setClassifyId(classifyId);

				model.addAttribute("report", report);

				return "report/report";/* 신고 작성 페이지로 이동 */
			}
		}
		return "main";
	}

	@RequestMapping(value = "regist.do", method = RequestMethod.POST)
	public String registReport(Report report, String reportedUserId, String reportUserId) {
		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		report.setRegDate(today);

		reportService.registReport(report, reportedUserId, reportUserId);

		return "redirect:/group/groupList.do";
	}

	@RequestMapping("searchArticle.do") /* 인애 - 2017.11.25 article search 파라미터 String groupId 뺌 */
	public ModelAndView searchArticleReport(String reportId, @RequestParam("articleId") String reportedArticleId,
			String reportedUserId, String reportUserId, String classifyReport) { // jsp에서 넘어오는 값의이름이 articleId 면 두고 아니면
																					// 빼기

		Report articleReportDetail = reportService.searchReportDetail(reportId);
		articleReportDetail.setReportUser(userService.searchByUserId(reportUserId));
		articleReportDetail.setReportedUser(userService.searchByUserId(reportedUserId));

		ModelAndView modelAndView = new ModelAndView("/report/reportDetail"); // report detail (상세 신고내역)
		modelAndView.addObject("articleReport", articleReportDetail);

		return modelAndView;
	}

	/* ↑ 신고 상세내역 보는 곳 ↓ */

	@RequestMapping("searchComment.do")
	public ModelAndView searchCommentReport(String reportId, @RequestParam("commentId") String reportedCommentId,
			String reportedUserId, String reportUserId, String classifyReport) { // jsp에서 넘어오는 값의이름이 commentId 면 두고 아니면
																					// 빼기

		Report commentReportDetail = reportService.searchReportDetail(reportId);

		commentReportDetail.setReportUser(userService.searchByUserId(reportUserId));
		commentReportDetail.setReportedUser(userService.searchByUserId(reportedUserId));

		ModelAndView modelAndView = new ModelAndView("/report/commentReportDetail"); // report detail (상세 신고내역)
		modelAndView.addObject("commentReport", commentReportDetail);

		return modelAndView;
	}

	@RequestMapping("searchUserReport.do")
	public ModelAndView searchReport(String reportedUserId) { // 2017.11.29 컨트롤러 빠져잇어서 추가 인애
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

	@RequestMapping(value = "remove.do", method = RequestMethod.POST)
	public String removeReported(Report report, String reportedUserId) {
		if (report.getClassifyReport().equals("article")) {
			reportService.acceptReport(report, report.getClassifyId(), reportedUserId);
			groupService.removeArticle(report.getClassifyId());
		} else if (report.getClassifyReport().equals("comment")) {
			reportService.acceptReport(report, report.getClassifyId(), reportedUserId);
			groupService.removeComment(report.getClassifyId());
		}
		return "redirect:/report/searchAll.do";
	}
}
