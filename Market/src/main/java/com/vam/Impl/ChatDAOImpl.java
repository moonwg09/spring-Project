package com.vam.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vam.VO.ChattingVO;
import com.vam.service.ChatDAO;

@Repository
public class ChatDAOImpl implements ChatDAO {
	
	@Autowired
	SqlSession session;
	String namespace = "com.vam.mapper.ChatMapper";
	
	@Override
	public List<ChattingVO> list() {
		return session.selectList(namespace+".list");
	}

	@Override
	public void insert(ChattingVO vo) {
		session.insert(namespace+".insert", vo);
		
	}
	
	
}
