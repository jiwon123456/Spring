package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.BCommentDto;
import com.java.www.dto.BoardDto;
import com.java.www.mapper.BoardMapper;

import jakarta.servlet.http.HttpSession;

@Service
public class BServiceImpl implements BService {

	@Autowired BoardMapper boardMapper;
	@Autowired HttpSession session;
	
	@Override //공지사항 전체가져오기
	public Map<String, Object> selectAll(int page,String searchWord) {
		//하단넘버링
		if(page<=0) page=1;
		int countPerPage = 10;
		int bottomPerNum = 10;
		int countAll = boardMapper.selectcountAll(searchWord);
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		int startPage = ((page-1)/10)*10+1;
		int endPage = (startPage+bottomPerNum)-1;
		int startRow = (page-1)*countPerPage+1;
		int endRow = startRow+countPerPage-1;
		
		if(endPage>maxPage) endPage = maxPage;
		List<BoardDto> list = boardMapper.selectAll(startRow,endRow,searchWord);
		
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("countAll", countAll);
		map.put("page", page);
		map.put("startPage", startPage);
		map.put("maxPage", maxPage);
		map.put("endPage", endPage);
		
		
		return map;
	}

	@Override //게시글 1개 가져오기
	public Map<String, Object> selectOne(int bno) {
		//게시글 1개 가져오기
		BoardDto bdto = boardMapper.selectOne(bno);
		// 하단댓글 모두 가져오기
		List<BCommentDto> bCommentlist = boardMapper.bCommentSelectAll(bno);
		
		//Map전송
		Map<String, Object> map = new HashMap<>();
		map.put("bdto", bdto);
		map.put("bCommentlist", bCommentlist);
		
		return map;
	}

	@Override //댓글1개 저장 후 댓글 1개 가져오기
	public BCommentDto bCommentInsert(BCommentDto cdto) {
		//session_id를 cdto의 id에 저장
		cdto.setId((String)session.getAttribute("session_id"));
		
		//댓글1개 저장
		boardMapper.bCommentInsert(cdto); //댓글폼에서 입력한 내용을 저장시킴
		System.out.println("bCommentInsert cno : "+cdto.getCno());
		System.out.println("bCommentInsert cdate : "+cdto.getCdate());
		
		//댓글1개 가져오기
		//BCommentDto bCommentDto = boardMapper.bCommentSelectOne(cdto.getCno()); 
		
		return cdto;
	}

	//댓글 삭제하기
	@Override
	public String BCommentDelete(int cno) {
		String result = "";
		int re = boardMapper.bCommentDelete(cno);
		
		return result+re;
	}

	//댓글 수정저장
	@Override
	public BCommentDto BCommentUpdate(BCommentDto cdto) {
		//session_id를 cdto의 id에 저장
		cdto.setId((String)session.getAttribute("session_id"));
		//수정저장
		boardMapper.BCommentUpdate(cdto);
				
		//댓글1개 가져오기
		BCommentDto bCommentDto = boardMapper.bCommentSelectOne(cdto.getCno()); 
		
		return bCommentDto;
	}

	

	

}
