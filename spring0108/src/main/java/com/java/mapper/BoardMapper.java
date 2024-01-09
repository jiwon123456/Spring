package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.BoardDto;

@Mapper
public interface BoardMapper {

	//전체 게시글 가져오기
	List<BoardDto> blist();

	//게시글저장하기
	void bwrite(BoardDto bdto);

}
