package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder          
@AllArgsConstructor
@NoArgsConstructor
@Data
public class MessCrossDto {

	private MessageDto messageDto;
	private Cross_userDto cross_userDto;
	
}
