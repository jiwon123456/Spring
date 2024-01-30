package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class MessageDto {

	private int msg_id;
	private String source_id;
	private String target_id;
	private String mcontent;
	private int checked;
	private Timestamp created;
}
