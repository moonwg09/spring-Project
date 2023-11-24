package com.vam.controller;


import java.util.Random;


import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vam.VO.KakaoDTO;
import com.vam.VO.MemberVO;
import com.vam.service.KakaoService;
import com.vam.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberservice;
	
	@Autowired
	private KakaoService kakaoService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private HttpSession session;
	
	
	
	// ȸ������ ��ư Ŭ�� ��
	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public void memberCheck() throws Exception {
		logger.info("memberCheck ����");
	}
	// ���� Ŭ�� ��
		@RequestMapping(value = "/join", method = RequestMethod.GET)
		public void memberJoin() throws Exception {
			logger.info("memberJoin ����");
		}
		
	//ȸ������
		@RequestMapping(value="/join", method = RequestMethod.POST)
		public String joinPOST(MemberVO mvo) throws Exception {
			
			logger.info("join ����");
			
			// ȸ������ ���� ����
			memberservice.memberJoin(mvo);
			
			logger.info("join service ����");
			
			return "redirect:/main";
		}
		
	// �α��� ��ư Ŭ�� ��
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void memberLogin() throws Exception {
		logger.info("memberLogin ����");
	}
	
	//�̸��� üũ �˾�â
	@RequestMapping(value = "/EMCheckPopUp", method = RequestMethod.GET)
	public void memberLogin2() throws Exception {
		logger.info("memberLogin ����");
	}
	
	
	@RequestMapping(value = "/PNCheckPopup", method = RequestMethod.GET)
	public void memberPnCheck() throws Exception {
		logger.info("memberPhoneCheck ����");
	}
	
	//���̵� �ߺ� �˻�
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	@ResponseBody
	public String IdChkPOST(String id) throws Exception {
		
		logger.info("idChk() ����");
		
		int result = memberservice.idCheck(id);
		
		logger.info("����� = " + result);
		
		if(result != 0 ) {
			return "fail"; //�ߺ� ���̵� ����
		} else {
			return "success";
		}
	}
	
	//�̸��� ����
	@RequestMapping(value="/mailCheck", method=RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception{
		
		logger.info("�̸��� ������ ���� Ȯ��");
		logger.info("������ȣ : " + email);
		
		//������ȣ ���� ����
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("������ȣ " + checkNum);
		
		//�̸��� ������
		String setFrom = "moonwg09@naver.com";
		String toMail = email;
		String title = "ȸ������ ���� �̸��� �Դϴ�.";
		String content = 
				"Ȩ�������� �湮���ּż� �����մϴ�." +
				"<br><br>" +
				"���� ��ȣ�� " + checkNum + "�Դϴ�." +
				"<br>" + 
				"�ش� ������ȣ�� ������ȣ Ȯ�ζ��� �����Ͽ� �ּ���.";
		
		try {
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content,true);
			mailSender.send(message);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String num = Integer.toString(checkNum);
		
		return num;
	}
	// �޴��� ����
	@RequestMapping(value="/memberPhoneCheck")
	@ResponseBody
	public String sendSMS(String memberPhone) throws Exception{
		Random rand  = new Random();
        String numStr = "";
        for(int i=0; i<4; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }

        System.out.println("������ ��ȣ : " + memberPhone);
        System.out.println("������ȣ : " + numStr);
        memberservice.sendPhoneNumber(memberPhone,numStr);
        
        
        return numStr;
	}
	
	// �α���
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberVO mvo, RedirectAttributes rttr) throws Exception{
		
//		System.out.println("login �޼��� ����");
//		System.out.println("���޵� ������ : " + mvo);
		
		HttpSession session = request.getSession();
		MemberVO lvo = memberservice.memberLogin(mvo);
		
		if(lvo == null) {
			
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/member/login";
		}
		
		session.setAttribute("member", lvo);
	
		
		return "redirect:/main";
	}
	
	@RequestMapping(value="/kakao", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, Model model) throws Exception{
	
		System.out.println("#########" + code);
        String access_Token = kakaoService.getAccessToken(code);
        KakaoDTO userInfo = kakaoService.getUserInfo(access_Token);
     
        session.invalidate();
        session.setAttribute("kakaoN", userInfo.getK_name());
        session.setAttribute("kakaoE", userInfo.getK_email());
     
       
        return "redirect:/main";
    }
	
	
	
		

}
