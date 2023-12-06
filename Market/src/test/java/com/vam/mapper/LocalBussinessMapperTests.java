package com.vam.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.vam.VO.LocalBussinessVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class LocalBussinessMapperTests {
	@Autowired
	LocalBussinessMapper localmapper;


//	@Test
//	public void selectAllTest() throws Exception{
//		  
//		  System.out.println(localmapper.localBussinessSelectAll());
//	}
	
//	@Test
//	public void insertTest() throws Exception{
//		LocalBussinessVO lbvo = new LocalBussinessVO();
//		lbvo.setTitle("test");
//		lbvo.setWriter("writer");
//		lbvo.setCategori(1);
//		lbvo.setContent("12345");
//		lbvo.setAddress("1234");
//		lbvo.setMenu("123");
//		lbvo.setPrice("12312");
//		
//	}
	
	@Test
	public void localGetDetail() throws Exception{
		 System.out.println(localmapper.productGetDetailImage(7L));
	}
}
