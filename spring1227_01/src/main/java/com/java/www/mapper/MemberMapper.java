package com.java.www.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.MemberDto;
import com.java.www.dto.MemberDto2;

@Mapper
public interface MemberMapper {

	//로그인 확인
	MemberDto2 login(MemberDto2 mdto2);

	//비밀번호 찾기
	MemberDto2 pwsearch(String id, String email);

	//패스워드변경 - update
	void update_pw(String pwcode, String id);

	//아이디 찾기
	MemberDto2 idsearch(String name, String email);

	//아이디 체크
	MemberDto2 idCheck(String id);

	
}
