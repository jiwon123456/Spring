package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder

public class MediaDto {
	
	
	private int media_id;
	private int post_id;
	private int msg_id;
	private String file_name;
	private String file_type;
	private int file_size;
	private Timestamp created;
	private Timestamp updated;
	
	
}
