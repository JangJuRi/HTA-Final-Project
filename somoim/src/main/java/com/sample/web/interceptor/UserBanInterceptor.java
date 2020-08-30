package com.sample.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.sample.service.AlramService;
import com.sample.service.HomeService;
import com.sample.vo.MoimUser;

public class UserBanInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private AlramService alramService;
	@Autowired
	HomeService homeService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//String auth = (String) request.getAttribute("auth");
		HttpSession session = request.getSession();
		MoimUser user = (MoimUser) session.getAttribute("LOGIN_USER");
		
		if (user != null) {
			if(user.getDeleteYN().equals("Y")) {
				System.out.println("Delete");
				session.invalidate();
				response.sendRedirect("/?error=delete");
				return false;
			}
			
			if(user.getSuspendedAccountYn().equals("Y")) {
				System.out.println("ban");
				session.invalidate();
				response.sendRedirect("/?error=ban");
				return false;
			}
			session.setAttribute("alrams", alramService.getAlrams(user.getId()));
			session.setAttribute("followUsers", homeService.getfollowUsers(user.getId()));
		}
		
		return true;
	}
}
