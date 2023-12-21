package com.java.www.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.www.dto.EmpDeptDto;
import com.java.www.dto.EmpDto;
import com.java.www.dto.MemBoardDto;
import com.java.www.service.EmpService;
import com.java.www.service.MbService;

@Controller
public class FController {

	@Autowired EmpService empService;
	@Autowired MbService mbService;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("list")
	public String list(Model model) {
		ArrayList<EmpDto> list = empService.list(); 
		model.addAttribute("list", list);
		return "list";
	}
	
	//사원,부서정보 가져오기
	@RequestMapping("list2")
	public String list2(Model model) {
		ArrayList<EmpDeptDto> list = empService.list2(); 
		model.addAttribute("list", list);
		return "list2";
	}
	
	//회원,게시글정보 가져오기
	@RequestMapping("list3")
	public String list3(Model model) {
		ArrayList<MemBoardDto> list = mbService.list3(); 
		model.addAttribute("list", list);
		return "list3";
	}
}
