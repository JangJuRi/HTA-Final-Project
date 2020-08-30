package com.sample.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.sample.vo.MoimUser;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		HttpSession session  = request.getSession();
		MoimUser user = (MoimUser) session.getAttribute("LOGIN_USER");
		if((!"/".equals(uri)) &&user == null) {
			response.sendRedirect("/");
			return false;
		}

		if ("/".equals(uri) && user != null) {
			response.sendRedirect("/home.do");
			return false;
		}
		
		request.setAttribute("auth", "pass");
		
		return true;
	}
}
