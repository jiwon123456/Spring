package com.java.www.service;

import org.springframework.stereotype.Service;


public interface EmailService {

	//이메일 전송
	String mailSend(String email);

}
