package com.java.www.controller;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.www.dto.BCommentDto;
import com.java.www.dto.BoardDto;
import com.java.www.service.BService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("customer")
public class BController {

	@Autowired BService bService;
    @Autowired	HttpSession session;
	
	//게시글 전체 가져오기
	@GetMapping("notice")
	public String notice(Model model) {
		//page 가지고 와야 함.
		
		//service 연결
		ArrayList<BoardDto> list = bService.selectAll();
		
		//model 태우기
		model.addAttribute("list", list);
		
		return "customer/notice";
	}

	//게시글 한개 가져오기
	@GetMapping("notice_view")
	public String notice_view(@RequestParam(defaultValue = "1") int bno, Model model) {
		System.out.println("bController notice_view bno : "+bno);
		//service 연결
		Map<String, Object> map = bService.selectOne(bno);
		
		//model
		model.addAttribute("map", map);
		
		return "customer/notice_view";
	}
	
	//ajax 댓글 입력
	@PostMapping("BCommentInsert")
	@ResponseBody //데이터 전송
	public BCommentDto BCommentInsert(BCommentDto cdto) {
		System.out.println("BController BCommentInsert cpw : "+cdto.getCpw());
		System.out.println("BController BCommentInsert ccontent : "+cdto.getCcontent());
		System.out.println("BController BCommentInsert bno : "+cdto.getBno());
		//id추가
		cdto.setId((String)session.getAttribute("session_id"));
		
		//db에 저장된 댓글 1개 가져오기 - cno,cdate가 포함되어 있음.
		BCommentDto bCommentDto = bService.BCommentInsert(cdto);
		
		
		return bCommentDto;
	}
	
	
}
