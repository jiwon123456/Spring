package com.java.www.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.MemberDto;

@Mapper
public interface MemberMapper {

	//로그인하기
	MemberDto loginSelect(String id, String pw);

	//아이디 체크
	MemberDto idCheck(String id);

	//회원가입체크
	MemberDto joinCheck(MemberDto mdto);

}
