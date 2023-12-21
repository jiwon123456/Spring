package com.java.www.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.MemBoardDto;
import com.java.www.mapper.MbMapper;

@Service
public class MbServiceImpl implements MbService {

	@Autowired MbMapper mbMapper;
	
	//회원,게시글정보 가져오기
	@Override
	public ArrayList<MemBoardDto> list3() {
		ArrayList<MemBoardDto> list = mbMapper.list3();
		return list;
	}

}
