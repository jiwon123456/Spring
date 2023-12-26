package com.java.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.www.dto.MemberDto;
import com.java.www.service.MService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("member")
public class MController {

	@Autowired MService mService;
	@Autowired HttpSession session;
	
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	

	@GetMapping("logout")
	public String logout() {
		session.invalidate();
		return "member/logout";
	}
	
	//---로그인 확인 부분 ------------
	//---- ajax 형태 ---------
	@PostMapping("ajaxLogin")
	@ResponseBody //데이터 전송
	public String ajaxLogin(MemberDto mdto) {
		System.out.println("MController login id : "+mdto.getId());
		System.out.println("MController login pw : "+mdto.getPw());
		
		//service - 1:성공 ,0:실패
		int result = mService.login(mdto);
		//model
		System.out.println("MController login ajaxResult : "+result);
		
		return result+""; //ajax은 데이터를 model에 태우는게 아닌 직접 보냄
	}
	
	//---- jsp 형태 ---------
	@PostMapping("login")
	public String login(MemberDto mdto,Model model) {
		System.out.println("MController login id : "+mdto.getId());
		System.out.println("MController login pw : "+mdto.getPw());
		
		//service - 1:성공 ,0:실패
		int result = mService.login(mdto);
		
		//model
		model.addAttribute("result", result); //jsp는 model에 데이터를 보냄
		
		return "member/doLogin";
	}
	
}
