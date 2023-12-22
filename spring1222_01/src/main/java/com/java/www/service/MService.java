package com.java.www.service;

import com.java.www.dto.MemberDto;

public interface MService {

	//로그인하기
	MemberDto loginSelect(String id, String pw);

	//아이디 체크
	String idCheck(String id);

	//회원가입체크
	String joinCheck(MemberDto mdto);

}
