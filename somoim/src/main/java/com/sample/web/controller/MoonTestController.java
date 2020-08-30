package com.sample.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MoonTestController {

	@RequestMapping("manager/test.do")
	public String test() {
		return "manager/manager.tiles";
	}

}
