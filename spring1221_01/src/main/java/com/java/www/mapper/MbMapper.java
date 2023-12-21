package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.MemBoardDto;

@Mapper
public interface MbMapper {

	//회원,게시글정보 가져오기
	ArrayList<MemBoardDto> list3();

}
