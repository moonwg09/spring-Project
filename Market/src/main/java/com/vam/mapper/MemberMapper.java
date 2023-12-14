package com.vam.mapper;

import java.util.List;

import com.vam.VO.LikeProductVO;
import com.vam.VO.MemberVO;

public interface MemberMapper {
	// ȸ������
	public void memberJoin(MemberVO mvo);
	
	// ���̵� �ߺ� �˻�
	public int idCheck(String id);
	
	// �α���
	public MemberVO memberLogin(MemberVO mvo);
	
	// ���� ���� ��������
	public List<MemberVO> memberGet();
	

	public List<MemberVO> mypageList(String nickName);
	
	public int mypageWriteCount(String nickName);

	public int mypageChatCount(String nickName);

	public int mypageReplyCount(String nickName);
	
	public void mypageLikeProduct(String nickName, Long productNo);

	public List<MemberVO> mypageLikeProductList(String nickName);
	
	public List<LikeProductVO> mypageLikeProductLists(String nickName);
	
	public MemberVO findMemberId(MemberVO dto);
	
	public MemberVO findMemberPassword(MemberVO dto);
	
	public int pwdCheck(MemberVO dto);

	//새로운 비밀번호로 저장
	public int pwdUpdate(MemberVO dto);
}
