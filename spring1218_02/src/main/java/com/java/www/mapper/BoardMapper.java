package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.BoardDto;

@Mapper
public interface BoardMapper {

	ArrayList<BoardDto> bList();

	BoardDto selectOne(int bno);

	//게시글 파일저장
	void bInsert(BoardDto bdto);


}
