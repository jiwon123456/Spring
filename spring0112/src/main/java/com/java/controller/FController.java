package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FController {

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("view")
	public String view() {
		return "view";
	}

	@GetMapping("notice_d")
	public String notice_d() {
		return "notice_d";
	}
	
	
	
}
