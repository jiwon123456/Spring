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

@Service
public class BServiceImpl implements BService {

	@Autowired BoardMapper boardMapper;

	//게시글 전체 가져오기
	@Override
	public ArrayList<BoardDto> selectAll() {
		
		ArrayList<BoardDto> list = boardMapper.selectAll();
		
		return list;
	}

	@Override
	public Map<String, Object> selectOne(int bno) {
		System.out.println("BServiceImpl selectOne bno : "+bno);
		
		//게시글 한개 가져오기,댓글 전체가져오기
		Map<String, Object> map = new HashMap<String, Object>();
		BoardDto bdto = boardMapper.selectOne(bno);
		List<BCommentDto> list = boardMapper.BCommentSelectAll(bno);
		map.put("list", list);
		map.put("bdto", bdto);
		return map;
	}

	//db에 저장된 댓글 1개 가져오기
	@Override
	public BCommentDto BCommentInsert(BCommentDto cdto) {
		//댓글 1개 저장
		boardMapper.BCommentInsert(cdto);
		System.out.println("BServiceImpl BCommentInsert cno : "+cdto.getCno());
		
		//저장된 댓글 1개 가져오기
		BCommentDto bCommentDto = boardMapper.BCommentSelectOne(cdto.getCno());
		System.out.println("BServiceImpl bCommentDto ccontent : "+cdto.getCcontent());
		
		return bCommentDto;
	}
	
}
