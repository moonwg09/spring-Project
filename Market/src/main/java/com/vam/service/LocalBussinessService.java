package com.vam.service;

import java.util.List;

import com.vam.VO.LocalBussinessVO;
import com.vam.VO.ProductImageVO;
import com.vam.VO.ProductVO;

public interface LocalBussinessService {
	
	public List<ProductImageVO> findById(Long productNo);
	
	public void register(LocalBussinessVO lbvo) throws Exception;
	
	public List<LocalBussinessVO> localBussinessSelectAll() throws Exception;
	
	public LocalBussinessVO localGetDetail(Long productNo) throws Exception;
	
	public int increaseRevisitCount(Long productNo) throws Exception;
	
}
