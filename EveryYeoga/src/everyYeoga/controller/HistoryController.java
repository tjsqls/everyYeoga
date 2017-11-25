package everyYeoga.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;
import everyYeoga.domain.User;
import everyYeoga.service.HistoryService;

@Controller
@RequestMapping("history")
public class HistoryController {
	
	@Autowired
	private HistoryService historyService;
	
	@RequestMapping(value="searchTravelerHistory.do")
	public String searchTravelerHistoryList(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		List<TravelerHistory> list = historyService.searchTravelerHistory(user.getId());
		model.addAttribute("list", list);
		return "history/myTravelerHistory";
	}
	
	@RequestMapping(value="remove.do")
	public String removeTravelerHistory(String travelerHistoryId, Model model) {
		historyService.removeTravelerHistory(travelerHistoryId);
		return "redirect:history/myTravelerHistory";
	}
	
	@RequestMapping(value="searchGuideHistory.do")
	public String searchGuideHistoryList(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		List<GuideHistory> tlist = historyService.searchGuideHistory(user.getId(), "확인");
		List<GuideHistory> flist = historyService.searchGuideHistory(user.getId(), "미확인");
		model.addAttribute("tlist", tlist);
		model.addAttribute("flist", flist);
		return "history/myGuideHistory";
	}
}
