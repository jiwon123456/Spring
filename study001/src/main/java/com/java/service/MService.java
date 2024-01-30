package com.java.service;

import java.util.ArrayList;
import java.util.List;

import com.java.dto.Cross_userDto;
import com.java.dto.MessCrossDto;
import com.java.dto.MessageDto;

public interface MService {

	//받은 쪽지 전체 가져오기
	ArrayList<MessCrossDto> receiveAll();

	//보낸 쪽지 전체 가져오기
	List<MessCrossDto> sendAll();

}
