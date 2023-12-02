package com.vam.mapper;

import java.util.List;

import com.vam.VO.LocalBussinessVO;

public interface LocalBussinessMapper {
	public List<LocalBussinessVO> localBussinessSelectAll() throws Exception ;
	
	public void localBussinessInsert(LocalBussinessVO lbvo) throws Exception;
	
	public LocalBussinessVO localGetDetail(Long productNo) throws Exception;

	public int increaseRevisitCount(Long productNo) throws Exception;
}
