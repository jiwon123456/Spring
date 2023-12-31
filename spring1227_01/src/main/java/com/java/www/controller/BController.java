package com.java.www.controller;

import java.util.List;
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
	@Autowired HttpSession session;
	
	@GetMapping("notice")
	public String notice(@RequestParam (defaultValue = "1")int page,
			@RequestParam(required = false)String searchWord,Model model) {
		//service연결 - list
		Map<String, Object> map = bService.selectAll(page,searchWord);
		//model전송
		model.addAttribute("map",map);
		return "customer/notice";
	}
	
	@GetMapping("notice_view") //1개 게시글 가져오기
	public String notice_view(@RequestParam(defaultValue = "1") int bno,Model model) {
		System.out.println("bcontroller notice_view bno : "+bno);
		//service연결
		Map<String, Object> map = bService.selectOne(bno);
		//model전송
		model.addAttribute("map",map);
		return "customer/notice_view";
	}
	
	@PostMapping("BCommentInsert") //댓글1개 저장 후 댓글 1개 가져오기
	@ResponseBody  //ajax-데이터전송
	public BCommentDto BCommentInsert(BCommentDto cdto) {
		System.out.println("bcontroller BCommentInsert bno : "+cdto.getBno());
		//service연결 - 저장시간, cno
		BCommentDto bCommentDto = bService.bCommentInsert(cdto);
		return bCommentDto;
	}
	
	@PostMapping("BCommentUpdate") //댓글 수정저장
	@ResponseBody  //ajax-데이터전송
	public BCommentDto BCommentUpdate(BCommentDto cdto) {
		System.out.println("bcontroller BCommentDelete cno : "+cdto.getCno());
		//service연결 - 댓글수정저장
		BCommentDto bCommentDto = bService.BCommentUpdate(cdto);
		return bCommentDto;
	}
	
	@PostMapping("BCommentDelete") //댓글 1개 삭제
	@ResponseBody  //ajax-데이터전송
	public String BCommentDelete(int cno) {
		System.out.println("bcontroller BCommentDelete cno : "+cno);
		//service연결 - 댓글삭제
		String result = bService.BCommentDelete(cno);
		return "삭제처리";
	}
	
	
	
	
}
