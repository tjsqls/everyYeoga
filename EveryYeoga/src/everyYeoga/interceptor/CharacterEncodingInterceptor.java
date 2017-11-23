package everyYeoga.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class CharacterEncodingInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)                   //dispatcher servlet 에서 핸들링으로 넘어가기 전
			throws Exception {																							 //handling 바로 직전
		
		request.setCharacterEncoding("UTF-8");
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,                     //핸들링 할때
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)   //핸들링 하기 전
			throws Exception {
		
	}

}
