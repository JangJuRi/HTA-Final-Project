package com.sample.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.service.UserService;
import com.sample.vo.MoimUser;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/info.do")
	public String userDetail(String userId, Model model) {
		MoimUser user = userService.getUserDetail(userId);
		System.out.println(user.getEmail());
		return "/list.do";
	}
}
