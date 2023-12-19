package com.java.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("member")
public class MController {

	@Autowired
	HttpSession session;
	
	@RequestMapping("login")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("doLogin")
	public String doLogin() {
		
		return "member/doLogin";
	}
}
