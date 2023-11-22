package com.vam.repository;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vam.VO.KakaoDTO;



@Repository
public class MemberRepository {

	@Autowired
	private SqlSessionTemplate sql;
	

	
	// 카카오 로그인
		public void kakaoinsert(HashMap<String, Object> userInfo) {
			sql.insert("Member.kakaoInsert",userInfo);
		}

		// 카카오 확인
		public KakaoDTO findkakao(HashMap<String, Object> userInfo) {
			System.out.println("RN:"+userInfo.get("nickname"));
			System.out.println("RE:"+userInfo.get("email"));
			return sql.selectOne("Member.findKakao", userInfo);
		}

	
}
