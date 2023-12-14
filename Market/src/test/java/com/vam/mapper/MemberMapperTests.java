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
	
//	@Test
//	public void memberJoinTest() throws Exception{ 
//		MemberVO member = new MemberVO();
//	  member.setMemberNo(3);
//	  member.setId("12324");
//	  member.setPassword("12234");
//	  member.setNickName("��ȣ22");
//	  member.setEmail("qwe22");
//	  member.setAddr1("12322");
//	  member.setAddr2("12322");
//	  member.setPhone("12322");
//	  member.setAdminCk(1);
//	  
//	  membermapper.memberJoin(member); //���� �޼��� ����
//	  
//	  }
	
//	//���̵� �ߺ��˻�
//	@Test
//	public void idCheck() throws Exception{
//		String id = "test3";
//		String id2 = "test1234";
//		membermapper.idCheck(id);
//		membermapper.idCheck(id2);
//	}
//	@Test
//	public void mypageTest() throws Exception{
//		
//		
//		
//		System.out.println(membermapper.mypageList("��ȣ2"));
//	}
	
//	@Test
//	public void mypageCountTest() throws Exception{
//		
//		
//		
//		System.out.println(membermapper.mypageWriteCount("��ȣ2"));
//	}
	
//	@Test
//	public void mypageChatCountTest() throws Exception{
//		
//		
//		
//		System.out.println(membermapper.mypageChatCount("��ȣ2"));
//	}

//	@Test
//	public void mypageChatCountTest() throws Exception{
//		
//		
//		
//		System.out.println(membermapper.mypageReplyCount("��ȣ2"));
//	}

//	@Test
//	public void mypageChatCountTest() throws Exception{
//		
//		Long id = 42L;
//		int id2 = 22;
//		
//	 membermapper.mypageLikeProduct(id2, id);
//		}

//	
//	@Test
//	public void mypageChatCountTest() throws Exception{
//		
//		System.out.println(membermapper.mypageLikeProductList("��ȣ2"));
//		}
	@Test
	public void mypageChatCountTest() throws Exception{
		
		System.out.println(membermapper.mypageLikeProductLists("��ȣ2"));
		}
}
