package com.vam.service;

import java.util.List;

import com.vam.VO.LocalBussinessVO;

public interface LocalBussinessService {
	public List<LocalBussinessVO> localBussinessSelectAll() throws Exception;
	
	public LocalBussinessVO localGetDetail(Long productNo) throws Exception;
	
	public int increaseRevisitCount(Long productNo) throws Exception;
}
