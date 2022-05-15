package com.ict.service;

import org.springframework.stereotype.Service;

@Service
public class SampleServicelmpl implements SampleService {

	@Override
	public Integer doADD(String str1, String str2) throws Exception {//문자 두개를 받아서 정수로 변환해서 두 정수를 더해서 리턴하게 해준다.
		
		return Integer.parseInt(str1) + Integer.parseInt(str2);
	}

}
