package com.vam.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParser;
import com.vam.VO.MemberVO;

public interface MemberService {
	// 회원가입
	public void memberJoin(MemberVO mvo) throws Exception;
	
	//아이디 중복 검사
	public int idCheck(String id) throws Exception;
	
	// 휴대폰인증
	public void sendPhoneNumber(String memberPhone, String cerNum) throws Exception;
	
	// 로그인
	public MemberVO memberLogin(MemberVO mvo) throws Exception;
	
	
}
