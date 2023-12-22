package com.java.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.MemberDto;
import com.java.www.mapper.MemberMapper;

@Service
public class MServiceImpl implements MService {

	@Autowired MemberMapper memberMapper;

	//로그인 하기
	@Override
	public MemberDto loginSelect(String id, String pw) {
		
		MemberDto mdto = memberMapper.loginSelect(id,pw);
		
		return mdto;
	}

	//아이디 체크
	@Override
	public String idCheck(String id) {
		String result = "사용불가";
		MemberDto mdto = memberMapper.idCheck(id);
		if(mdto == null) {
			result = "사용가능";
		}
		return result;
	}

	//회원가입체크
	@Override
	public String joinCheck(MemberDto mdto) {
		String result = "입력이 완료되지 않았습니다.";
		MemberDto memberDto = memberMapper.joinCheck(mdto);
		if(memberDto != null) {
			result = "회원가입이 완료되었습니다.";
		}
		return result;
	}
}
