
package com.vam.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vam.VO.ChattingVO;
import com.vam.service.ChatService;

@Repository
public class ChatServiceImpl implements ChatService {
	
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

	@Override
	public void delete(int id) {
		session.delete(namespace+".delete", id);
		
	}

	@Override
	public int last() {
		return session.selectOne(namespace+".last");
	}
	
	
}
