package com.java.service;

import java.util.List;

import com.java.dto.BoardDto;

public interface BService {

	//전체 게시글 가져오기
	List<BoardDto> blist();

	//게시글저장하기
	void write(BoardDto bdto);

	//게시글 한개 가져오기
	BoardDto selectOne(int bno);

}
