package com.vam.mapper;

import java.util.List;

import com.vam.VO.ChattingVO;

public interface ChatMapper {
	
	public List<ChattingVO> list();
	
	public void insert(ChattingVO vo);
	
	public void delete(int id);
	
	public int last();

}
