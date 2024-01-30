package com.java.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class FController {
	
	@RequestMapping("/")	
	public String index(){
		
		return "index";
	}

	@GetMapping("viewContent")
	public String viewContent() {
		
		return "view";
	}
	
	@RequestMapping("head")
	public String head() {
		return "head";
	}
	@RequestMapping("head2")
	public String head2() {
		return "head2";
	}
	@RequestMapping("head3")
	public String head3() {
		return "head3";
	}

}
