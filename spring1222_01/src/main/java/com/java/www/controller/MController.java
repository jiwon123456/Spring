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
int result = 0;
	
	@Autowired MService mService;
	@Autowired HttpSession session;
	
	@GetMapping("login") //로그인페이지 이동
	public String login() {
		return "member/login";
	}
	
	@GetMapping("logout") //로그아웃 하기
	public String logout() {
		session.invalidate();
		return "member/logout";
	}

	@RequestMapping("doLogin") //로그인 확인
	public String login(String id,String pw,Model model) {
		
		MemberDto mdto = mService.loginSelect(id,pw);
		
		if(mdto != null) {
			session.setAttribute("session_id", mdto.getId());
			session.setAttribute("session_name", mdto.getName());
			result= 1;
			System.out.println("MController id : "+mdto.getId());
		}
		model.addAttribute("result", result);
		return "member/doLogin";
	}
	
	@GetMapping("join01")
	public String join01() {
		return "member/join01";
	}
	
	@PostMapping("join02")
	public String join02() {
		return "member/join02";
	}

	@PostMapping("idCheck") //ajax
	@ResponseBody          
	public String idCheck(String id) {
		System.out.println("MController idCheck id : "+id);
		String result = "사용가능";
		//db접근
		result = mService.idCheck(id);
		
		return result;
	}
	
	//회원가입체크
	@PostMapping("joinCheck") //ajax
	@ResponseBody          
	public String joinCheck(MemberDto mdto) {
		String result = "입력이 완료되지 않았습니다.";
		//db접근
		result = mService.joinCheck(mdto);
		
		return result;
	}
	
	@GetMapping("join03")
	public String join03() {
		return "member/join03";
	}
	
}
