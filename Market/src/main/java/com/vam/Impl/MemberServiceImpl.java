package com.vam.Impl;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vam.VO.LikeProductVO;
import com.vam.VO.MemberVO;
import com.vam.mapper.MemberMapper;
import com.vam.service.MemberService;

import net.nurigo.java_sdk.api.Message;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper membermapper;

	@Override
	public void memberJoin(MemberVO mvo) throws Exception {
		membermapper.memberJoin(mvo);
	}

	@Override
	public int idCheck(String id) throws Exception {

		return membermapper.idCheck(id);
	}

	@Override
	public void sendPhoneNumber(String memberPhone, String cerNum) throws Exception {
		String api_key = "NCSVEENROUGXFV4T";
		String api_secret = "VTACPJ4NRZKSMEGW068D0XTOU15SBUZ5";
		Message coolsms = new Message(api_key, api_secret);
		String myMail = "01083404100";
		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", memberPhone); // 수신전화번호
		params.put("from", myMail); // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
		params.put("type", "SMS");
		params.put("text", "[TEST] 인증번호는" + "[" + cerNum + "]" + "입니다."); // 문자 내용 입력
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}

	}

	@Override
	public MemberVO memberLogin(MemberVO mvo) throws Exception {

		return membermapper.memberLogin(mvo);
	}

	@Override
	public List<MemberVO> memberGet() throws Exception {

		return membermapper.memberGet();
	}

	@Override
	public List<MemberVO> mypageList(String nickName) throws Exception {

		return membermapper.mypageList(nickName);
	}

	@Override
	public int mypageWriteCount(String nickName) throws Exception {
		
		return membermapper.mypageWriteCount(nickName);
	}
	@Override
	public int mypageChatCount(String nickName) throws Exception {
		
		return membermapper.mypageChatCount(nickName);
	}
	@Override
	public int mypageReplyCount(String nickName) throws Exception {
		
		return membermapper.mypageReplyCount(nickName);
	}
	
	@Override
	public void mypageLikeProduct(String nickName, Long productNo) throws Exception {
		membermapper.mypageLikeProduct(nickName, productNo);
	}
	
	@Override
	public List<MemberVO> mypageLikeProductList(String nickName) throws Exception {
	
		return membermapper.mypageLikeProductList(nickName);
	}
	@Override
	public List<LikeProductVO> mypageLikeProductLists(String nickName) throws Exception {
		// TODO Auto-generated method stub
		return membermapper.mypageLikeProductLists(nickName);
	}
}
