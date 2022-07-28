package com.on.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	
	
	
	
	@RequestMapping("login.do")
	public String login() {
		return "member/login";
		
	}
	
	@RequestMapping("join.do")
	public String join() {
		return "member/join";
	}
	
}
