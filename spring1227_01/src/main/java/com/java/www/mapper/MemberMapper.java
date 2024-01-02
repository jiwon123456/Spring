package com.java.www.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.MemberDto;

@Mapper
public interface MemberMapper {

	//로그인 확인
	MemberDto login(MemberDto mdto);

	//아이디 찾기
	MemberDto id(MemberDto mdto);

	
}
