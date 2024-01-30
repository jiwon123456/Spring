package com.java.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.Cross_userDto;
import com.java.dto.MessCrossDto;
import com.java.dto.MessageDto;
import com.java.mapper.MessageMapper;

@Service
public class MServiceImpl implements MService {

	@Autowired MessageMapper messageMapper;
	
	@Override//받은 쪽지 전체 가져오기
	public ArrayList<MessCrossDto> receiveAll() {
		ArrayList<MessCrossDto> list = messageMapper.receiveAll();
		return list;
	}

	@Override//보낸 쪽지 전체 가져오기
	public List<MessCrossDto> sendAll() {
		List<MessCrossDto> list2 = messageMapper.sendAll();
		return list2;
	}


}
