package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.BoardDto;

@Mapper
public interface BoardMapper {

	//게시글 전체 가져오기
	ArrayList<BoardDto> selectAll();

	//게시글 1개 가져오기 - 현재글
	BoardDto selectOne(int bno);

	//게시글1개 이전글
	BoardDto selectOnePrev(int bno);

	//게시글1개 다음글
	BoardDto selectOneNext(int bno);
	
	//글쓰기 저장
	int bInsert(BoardDto bdto);

}
