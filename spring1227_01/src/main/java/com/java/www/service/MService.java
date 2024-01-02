package com.java.www.service;

import com.java.www.dto.MemberDto;

public interface MService {

	//로그인 확인
	int login(MemberDto mdto);

	//아이디 찾기
	int id(MemberDto mdto);

}
