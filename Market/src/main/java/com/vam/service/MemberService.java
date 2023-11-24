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
	// ȸ������
	public void memberJoin(MemberVO mvo) throws Exception;
	
	//���̵� �ߺ� �˻�
	public int idCheck(String id) throws Exception;
	
	// �޴�������
	public void sendPhoneNumber(String memberPhone, String cerNum) throws Exception;
	
	// �α���
	public MemberVO memberLogin(MemberVO mvo) throws Exception;
	
	
}
