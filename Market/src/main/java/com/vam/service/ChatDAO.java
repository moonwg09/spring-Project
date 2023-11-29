package com.vam.service;

import java.util.List;

import com.vam.VO.ChattingVO;

public interface ChatDAO {
	public List<ChattingVO> list();
	
	public void insert(ChattingVO vo);
}
