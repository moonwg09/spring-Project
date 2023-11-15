package com.vam.mapper;

import com.vam.VO.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void memberJoin(MemberVO mvo);
	
	// 아이디 중복 검사
	public int idCheck(String id);
}
