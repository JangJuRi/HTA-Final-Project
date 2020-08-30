package com.sample.web.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sample.service.UserService;
import com.sample.vo.MoimUser;
import com.sample.web.form.LoginForm;

@Controller
@SessionAttributes("LOGIN_USER")
public class SignInOutController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String signIn(Model model) {
		LoginForm loginForm = new LoginForm();
		model.addAttribute("loginForm", loginForm);
		return "form/index";
	}
	
	@PostMapping("/login/signin.do")
	public String login(@ModelAttribute("loginForm") @Valid LoginForm loginForm,
			BindingResult errors, Model model) {
		if(errors.hasErrors()) {
			return "redirect:/?error=fail";
		}
		
		MoimUser user = userService.login(loginForm.getUserId(), loginForm.getUserpwd());
		if (user == null) {
			return "redirect:/?error=fail";
		}
		
		model.addAttribute("LOGIN_USER", user);
		
		return "redirect:/home.do";
	}
	
	@GetMapping("/login/signout.do")
	public String signout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		
		return "redirect:/";
	}
}
