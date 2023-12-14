package com.vam.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParser;
import com.vam.VO.LikeProductVO;
import com.vam.VO.MemberVO;
import com.vam.VO.ProductVO;

public interface MemberService {
	// ȸ������
	public void memberJoin(MemberVO mvo) throws Exception;
	
	//���̵� �ߺ� �˻�
	public int idCheck(String id) throws Exception;
	
	// �޴�������
	public void sendPhoneNumber(String memberPhone, String cerNum) throws Exception;
	
	// �α���
	public MemberVO memberLogin(MemberVO mvo) throws Exception;
	
	// �������� ��������
	public List<MemberVO> memberGet() throws Exception;
	
	public List<MemberVO> mypageList(String nickName) throws Exception;
	
	public int mypageWriteCount(String nickName) throws Exception;
	
	public int mypageChatCount(String nickName) throws Exception;
	
	public int mypageReplyCount(String nickName) throws Exception;
	
	public void mypageLikeProduct(String nickName , Long productNo) throws Exception;
	
	public List<MemberVO> mypageLikeProductList(String nickName) throws Exception;
	
	public List<LikeProductVO> mypageLikeProductLists(String nickName) throws Exception;
	
	public MemberVO findMemberId(MemberVO dto);
	
	public MemberVO findMemberPassword(MemberVO dto);

	public int pwdCheck(MemberVO dto);

	//새로운 비밀번호로 저장
	public void pwdUpdate(MemberVO dto);

	
	
}
