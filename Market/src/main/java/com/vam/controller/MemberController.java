package com.vam.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vam.VO.MemberVO;
import com.vam.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberservice;
	
	
	// 회원가입 버튼 클릭 시
	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public void memberCheck() throws Exception {
		logger.info("memberCheck 진입");
	}
	// 다음 클릭 시
		@RequestMapping(value = "/join", method = RequestMethod.GET)
		public void memberJoin() throws Exception {
			logger.info("memberJoin 진입");
		}
		
	//회원가입
		@RequestMapping(value="/join", method = RequestMethod.POST)
		public String joinPOST(MemberVO mvo) throws Exception {
			
			logger.info("join 진입");
			
			// 회원가입 서비스 실행
			memberservice.memberJoin(mvo);
			
			logger.info("join service 성공");
			
			return "redirect:/main";
		}
		
	// 로그인 버튼 클릭 시
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void memberLogin() throws Exception {
		logger.info("memberLogin 진입");
	}
	
	//아이디 중복 검사
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	@ResponseBody
	public String IdChkPOST(String id) throws Exception {
		
		logger.info("idChk() 진입");
		
		int result = memberservice.idCheck(id);
		
		logger.info("결과값 = " + result);
		
		if(result != 0 ) {
			return "fail"; //중복 아이디 존재
		} else {
			return "success";
		}
	}
	
	//이메일 인증
	@RequestMapping(value="/mailCheck", method=RequestMethod.GET)
	@ResponseBody
	public void mailCheckGET(String email) throws Exception{
		
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + email);
	}
	
}
