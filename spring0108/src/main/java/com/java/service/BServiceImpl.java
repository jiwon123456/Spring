package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.BoardDto;
import com.java.mapper.BoardMapper;

@Service
public class BServiceImpl implements BService{

	@Autowired BoardMapper boardMapper;

	@Override//전체 게시글 가져오기
	public List<BoardDto> blist() {
		
		List<BoardDto> list = boardMapper.blist();
		
		return list;
	}

	@Override//게시글저장하기
	public void bwrite(BoardDto bdto) {
		
		boardMapper.bwrite(bdto);
		
	}
	
}
