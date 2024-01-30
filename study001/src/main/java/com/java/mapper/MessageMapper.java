package com.java.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.Cross_userDto;
import com.java.dto.MessCrossDto;
import com.java.dto.MessageDto;

@Mapper
public interface MessageMapper {

	//받은 쪽지 전체 가져오기
	ArrayList<MessCrossDto> receiveAll();

	//보낸 쪽지 전체 가져오기
	List<MessCrossDto> sendAll();

}
