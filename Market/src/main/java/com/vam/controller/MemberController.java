package com.vam.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vam.VO.MemberVO;
import com.vam.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberservice;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	// ȸ������ ��ư Ŭ�� ��
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void memberJoin() throws Exception {
		logger.info("memberJoin ����");
	}

	// ȸ������
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPost(MemberVO mvo) throws Exception {
		String rawPw = ""; // ���ڵ� ��
		String encodePw = ""; // ���ڵ� ��

		rawPw = mvo.getPassword(); // ��й�ȣ ������ ����
		encodePw = pwEncoder.encode(rawPw); // ��й�ȣ ���ڵ�
		mvo.setPassword(encodePw); // ���ڵ��� ��й�ȣ member��ü�� �ٽ� ����
		 memberservice.memberJoin(mvo);
		return "redirect:/login";
	}

	// �α��� ��ư Ŭ�� ��
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void memberLogin() throws Exception {
		logger.info("memberLogin ����");
	}
}
