package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Cross_userDto {
	
	private String user_id;
	private String password;
	private String name;
	private String email;
	private String proflie_txt;
	private String profile_img;
	private String header_img;
	private String user_loc;
	private String user_url;
	private Timestamp created;
	private Timestamp updated;
	private int activity;
	
	
	
}
