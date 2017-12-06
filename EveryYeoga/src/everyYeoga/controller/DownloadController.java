package everyYeoga.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DownloadController implements ApplicationContextAware{
	//선빈
	private WebApplicationContext context = null;
	
	@RequestMapping(value="downLoad.do", method=RequestMethod.GET)
	public ModelAndView down(@RequestParam("path")String path, @RequestParam("fileName")String fileName) {
		String fullPath = path + "\\" + fileName;
		File file = new File(fullPath);
		return new ModelAndView("download", "downloadFile", file);
	}
//	
	
	
	@Override
	public void setApplicationContext(ApplicationContext arg0) throws BeansException {
		// 선빈
		this.context = (WebApplicationContext)arg0;
		
	}
	
	
}
