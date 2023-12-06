package com.vam.controller;


import java.net.URLEncoder;
import java.util.List;
import java.util.Random;



import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vam.VO.KakaoDTO;
import com.vam.VO.MemberVO;
import com.vam.VO.ProductVO;
import com.vam.service.KakaoService;
import com.vam.service.MemberService;
import com.vam.service.TransationService;

@SessionAttributes({"loginUser"})
@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberservice;
	
	@Autowired
	TransationService productservice;
	@Autowired
	private KakaoService kakaoService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	
//	@Autowired
//	private HttpSession session;
	
	

	// 회占쏙옙占쏙옙占쏙옙 占쏙옙튼 클占쏙옙 占쏙옙
	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public void memberCheck() throws Exception {
		logger.info("memberCheck 占쏙옙占쏙옙");
	}
	// 占쏙옙占쏙옙 클占쏙옙 占쏙옙
		@RequestMapping(value = "/join", method = RequestMethod.GET)
		public void memberJoin() throws Exception {
			logger.info("memberJoin 占쏙옙占쏙옙");
		}
		
	//회占쏙옙占쏙옙占쏙옙
		@RequestMapping(value="/join", method = RequestMethod.POST)
		public String joinPOST(MemberVO mvo) throws Exception {
			

			
		        
		        /* 회원가입 쿼리 실행 */
		        memberservice.memberJoin(mvo);
			logger.info("join 占쏙옙占쏙옙");
			

			
			return "redirect:/main";
		}
		
	// 占싸깍옙占쏙옙 占쏙옙튼 클占쏙옙 占쏙옙
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void memberLogin() throws Exception {
		logger.info("memberLogin 占쏙옙占쏙옙");
	}
	
	//占싱몌옙占쏙옙 체크 占싯억옙창
	@RequestMapping(value = "/EMCheckPopUp", method = RequestMethod.GET)
	public void memberLogin2() throws Exception {
		logger.info("memberLogin 占쏙옙占쏙옙");
	}
	
	
	@RequestMapping(value = "/PNCheckPopup", method = RequestMethod.GET)
	public void memberPnCheck() throws Exception {
		logger.info("memberPhoneCheck 占쏙옙占쏙옙");
	}
	
	//占쏙옙占싱듸옙 占쌩븝옙 占싯삼옙
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	@ResponseBody
	public String IdChkPOST(String id) throws Exception {
		
		logger.info("idChk() 占쏙옙占쏙옙");
		
		int result = memberservice.idCheck(id);
		
		logger.info("占쏙옙占쏙옙占� = " + result);
		
		if(result != 0 ) {
			return "fail"; //占쌩븝옙 占쏙옙占싱듸옙 占쏙옙占쏙옙
		} else {
			return "success";
		}
	}
	
	//占싱몌옙占쏙옙 占쏙옙占쏙옙
	@RequestMapping(value="/mailCheck", method=RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception{
		
		logger.info("占싱몌옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 확占쏙옙");
		logger.info("占쏙옙占쏙옙占쏙옙호 : " + email);
		
		//占쏙옙占쏙옙占쏙옙호 占쏙옙占쏙옙 占쏙옙占쏙옙
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("占쏙옙占쏙옙占쏙옙호 " + checkNum);
		
		//占싱몌옙占쏙옙 占쏙옙占쏙옙占쏙옙
		String setFrom = "moonwg09@naver.com";
		String toMail = email;
		String title = "회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占싱몌옙占쏙옙 占쌉니댐옙.";
		String content = 
				"홈占쏙옙占쏙옙占쏙옙占쏙옙 占썸문占쏙옙占쌍셔쇽옙 占쏙옙占쏙옙占쌌니댐옙." +
				"<br><br>" +
				"占쏙옙占쏙옙 占쏙옙호占쏙옙 " + checkNum + "占쌉니댐옙." +
				"<br>" + 
				"占쌔댐옙 占쏙옙占쏙옙占쏙옙호占쏙옙 占쏙옙占쏙옙占쏙옙호 확占싸띰옙占쏙옙 占쏙옙占쏙옙占싹울옙 占쌍쇽옙占쏙옙.";
		
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
	// 占쌨댐옙占쏙옙 占쏙옙占쏙옙
	@RequestMapping(value="/memberPhoneCheck")
	@ResponseBody
	public String sendSMS(String memberPhone) throws Exception{
		Random rand  = new Random();
        String numStr = "";
        for(int i=0; i<4; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }

        System.out.println("占쏙옙占쏙옙占쏙옙 占쏙옙호 : " + memberPhone);
        System.out.println("占쏙옙占쏙옙占쏙옙호 : " + numStr);
        memberservice.sendPhoneNumber(memberPhone,numStr);
        
        
        return numStr;
	}
	
	// 占싸깍옙占쏙옙
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberVO mvo, RedirectAttributes rttr) throws Exception{
		
			           	            		
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
	
	// 占싸깍옙占쏙옙
	@RequestMapping(value="mypage", method=RequestMethod.GET)
	public void mypage(HttpServletRequest request, MemberVO mvo, RedirectAttributes rttr, Model model, String nickName) throws Exception{
		
		memberservice.mypageList(nickName);
		
		model.addAttribute("likeProductList", memberservice.mypageLikeProductList(nickName));
		model.addAttribute("mypageList", memberservice.mypageList(nickName));
		model.addAttribute("myWriteCount", memberservice.mypageWriteCount(nickName));
		model.addAttribute("mypageChatCount", memberservice.mypageChatCount(nickName));
		model.addAttribute("mypageReplyCount", memberservice.mypageReplyCount(nickName));
		model.addAttribute("likeProductLists", memberservice.mypageLikeProductLists(nickName));
		System.out.println(nickName);
		System.out.println("mypage ####################입장");
		System.out.println(memberservice.mypageList(nickName));
		System.out.println(memberservice.mypageWriteCount(nickName));
	}
	@RequestMapping(value="likeProduct", method=RequestMethod.GET,produces = "text/html; charset=UTF-8")
	public String mypageLikeProduct( Model model, @RequestParam(name = "nickName") String nickName, @RequestParam(name = "productNo") Long productNo) throws Exception{
		System.out.println(productNo);
		memberservice.mypageLikeProduct(nickName, productNo);
		return "redirect:/member/mypage?nickName=" + URLEncoder.encode(nickName, "UTF-8");
	}
//	@RequestMapping(value="/kakao", method=RequestMethod.GET)
//	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, Model model) throws Exception{
//	
//		System.out.println("#########" + code);
//        String access_Token = kakaoService.getAccessToken(code);
//        KakaoDTO userInfo = kakaoService.getUserInfo(access_Token);
//     
//        session.invalidate();
//        session.setAttribute("kakaoN", userInfo.getK_name());
//        session.setAttribute("kakaoE", userInfo.getK_email());
//     
//       
//        return "redirect:/main";
//    }
//	
	// ���������� �α׾ƿ�
		@RequestMapping(value="/logout", method=RequestMethod.GET)
		public String logoutMainGET(HttpServletRequest request) throws Exception{
			
			logger.info("logoutMainGET�޼��� ����");
			
			HttpSession session = request.getSession();
			
			session.invalidate();
			
			return "redirect:/main";
		}
		
		
		

		
}
