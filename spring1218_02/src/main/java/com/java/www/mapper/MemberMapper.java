package com.java.www.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.MemberDto;

@Mapper
public interface MemberMapper {

	//로그인하기
	MemberDto loginSelect(MemberDto mdto);

}
