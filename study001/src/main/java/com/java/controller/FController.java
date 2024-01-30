package com.java.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.Cross_userDto;
import com.java.dto.MessCrossDto;
import com.java.dto.MessageDto;
import com.java.service.MService;

@Controller
public class FController {
	
	@Autowired
	MService mService;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	//받은 쪽지 전체 가져오기
	@RequestMapping("/head")
	public String head(Model model) {
		
		ArrayList<MessCrossDto> list = mService.receiveAll();
		model.addAttribute("list", list);
		System.out.println("");
		return "head";
	}
	
	
	@RequestMapping("/head2")
	public String head2(Model model) {
		
		List<MessCrossDto> list2 = mService.sendAll();
		model.addAttribute("list2", list2);
		return "head2";
	}

}
