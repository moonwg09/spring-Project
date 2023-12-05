package com.vam.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParser;
import com.vam.VO.LikeProductVO;
import com.vam.VO.MemberVO;

public interface MemberService {
	// È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
	public void memberJoin(MemberVO mvo) throws Exception;
	
	//ï¿½ï¿½ï¿½Ìµï¿½ ï¿½ßºï¿½ ï¿½Ë»ï¿½
	public int idCheck(String id) throws Exception;
	
	// ï¿½Þ´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
	public void sendPhoneNumber(String memberPhone, String cerNum) throws Exception;
	
	// ï¿½Î±ï¿½ï¿½ï¿½
	public MemberVO memberLogin(MemberVO mvo) throws Exception;
	
	// À¯ÀúÁ¤º¸ °¡Á®¿À±â
	public List<MemberVO> memberGet() throws Exception;
	
	public List<MemberVO> mypageList(String nickName) throws Exception;
	
	public int mypageWriteCount(String nickName) throws Exception;
	
	public int mypageChatCount(String nickName) throws Exception;
	
	public int mypageReplyCount(String nickName) throws Exception;
	
	public void mypageLikeProduct(String nickName , Long productNo) throws Exception;
	
	public List<MemberVO> mypageLikeProductList(String nickName) throws Exception;
	
	public List<LikeProductVO> mypageLikeProductLists(String nickName) throws Exception;
	
}
