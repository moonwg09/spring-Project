package com.vam.service;

import com.vam.VO.MemberVO;

public interface MemberService {
	// 회원가입
	public void memberJoin(MemberVO mvo) throws Exception;
	
	//아이디 중복 검사
	public int idCheck(String id) throws Exception;
	
}
