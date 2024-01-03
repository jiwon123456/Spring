package com.java.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.www.dto.MemberDto;
import com.java.www.dto.MemberDto2;
import com.java.www.service.EmailService;
import com.java.www.service.MService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("member")
public class MController {

	@Autowired MService mService;
	@Autowired HttpSession session;
	@Autowired EmailService emailService;
	
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	
	@GetMapping("logout")
	public String logout() {
		session.invalidate();
		return "member/logout";
	}
	
	//------ 로그인 확인 부분 ----------
	//------ ajax 형태 ----------
	@PostMapping("ajaxLogin")
	@ResponseBody //데이터 전송
	public String ajaxLogin(MemberDto2 mdto2) {
		System.out.println("MController login id : "+mdto2.getId());
		System.out.println("MController login pw : "+mdto2.getPw());
		
		//service연결 - 1:성공,0:실패
		int result = mService.login(mdto2);
		System.out.println("MController login result : "+result);
		
		return result+"";
	}
	
	@PostMapping("idCheck")
	@ResponseBody //데이터 전송
	public String idCheck(String id) {
		
		//service연결 - 1:성공,0:실패
		MemberDto2 mdto2 = mService.idCheck(id);
		
		String result = "fail";
		if(mdto2 == null) result = "success";
		
		return result;
	}
	
	//------ jsp 형태 ----------
	@PostMapping("login")
	public String login(MemberDto2 mdto2,Model model) {
		System.out.println("MController login id : "+mdto2.getId());
		System.out.println("MController login pw : "+mdto2.getPw());
		
		//service연결 - 1:성공,0:실패
		int result = mService.login(mdto2);
		//model전송
		model.addAttribute("result",result);
		System.out.println("MController login result : "+result);
		return "member/doLogin";
	}
	
	@GetMapping("idsearch") //idsearch페이지 열기
	public String idsearch() {
		return "member/idsearch";
	}
	
	@GetMapping("id") //id페이지 열기
	public String id() {
		return "member/id";
	}

	@PostMapping("pwsearch")
	@ResponseBody
	public String pwsearch(String id,String email) {
		System.out.println("MController id : "+id);
		System.out.println("MController email : "+email);
		//service연결 - 아이디,이메일 검색
		String result = mService.pwsearch(id,email);
		
		return result;
	}
	
	@PostMapping("idsearch") //ajax 아이디찾기
	@ResponseBody
	public String idsearch(String name,String email) {
		System.out.println("MController name : "+name);
		System.out.println("MController email : "+email);
		//service 연결
		MemberDto2 mdto2 = mService.idsearch(name,email);
		String result = "";
		String tempId = ""; //임시 아이디
		//찾은 아이디에 뒤 두자리에 **넣기
		if(mdto2 != null) {
			tempId = mdto2.getId().substring(0,mdto2.getId().length()-2);
			tempId += "**";
			System.out.println("찾은 아이디 : "+tempId);
			result = tempId;
		}else {
			result = "fail";
		}
		System.out.println("MController id result : "+result);
		
		return result;
	}
	
	@GetMapping("step01")
	public String step01() {
		return "member/step01";
	}
	
	@GetMapping("step02")
	public String step02() {
		return "member/step02";
	}
	
	@GetMapping("step03")
	public String step03() {
		return "member/step03";
	}

	@GetMapping("step04")
	public String step04() {
		return "member/step04";
	}

	@PostMapping("step04")
	public String step04(MemberDto2 mdto2) {
		System.out.println("MController step04 phone : "+mdto2.getPhone());
		
		return "member/step04";
	}

	@PostMapping("email")
	@ResponseBody
	public String email(String email) {
		System.out.println("MController email : "+email);
		
		//service연결
		String result = emailService.mailSend(email);
		
		
		return result;
	}
	
	@PostMapping("pwCheck") //인증코드 확인
	@ResponseBody
	public String pwCheck(String pwcode) {
		System.out.println("MController pwcode : "+pwcode);
		String pw = (String) session.getAttribute("email_pwcode");
		String result = "fail";
		if(pw.equals(pwcode)) result = "succes";
		
		
		
		return result;
	}
	
}
