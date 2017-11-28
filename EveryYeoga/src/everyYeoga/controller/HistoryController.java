package everyYeoga.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.TravelerHistory;
import everyYeoga.domain.User;
import everyYeoga.service.HistoryService;

@Controller
@RequestMapping("history")
public class HistoryController {
	
	@Autowired
	private HistoryService historyService;
	
	@RequestMapping("searchTravelerHistory.do")
	public ModelAndView searchTravelerHistoryList(HttpServletRequest req) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginedUser");
		List<TravelerHistory> list = historyService.searchTravelerHistory(user.getId());
		ModelAndView modelAndView = new ModelAndView("history/myTravelerHistory");
		modelAndView.addObject("list", list);
		return modelAndView;
	}
	
	@RequestMapping(value="remove.do", method=RequestMethod.POST)
	public String removeTravelerHistory(String travelerHistoryId, Model model) {
		historyService.removeTravelerHistory(travelerHistoryId);
		return "redirect:/history/searchTravelerHistory.do";
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
