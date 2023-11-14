package com.vam.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.vam.VO.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	
	@Autowired
	MemberMapper membermapper;
	
	@Test
	public void memberJoinTest() throws Exception{ 
		MemberVO member = new MemberVO();
	  member.setMemberNo(3);
	  member.setId("12324");
	  member.setPassword("12234");
	  member.setNickName("용호22");
	  member.setEmail("qwe22");
	  member.setAddr1("12322");
	  member.setAddr2("12322");
	  member.setPhone("12322");
	  member.setAdminCk(1);
	  
	  membermapper.memberJoin(member); //쿼리 메서드 실행
	  
	  }
}
