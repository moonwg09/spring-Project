package com.vam.service;

import java.util.List;

import com.vam.VO.LocalBussinessImageVO;
import com.vam.VO.LocalBussinessVO;
import com.vam.VO.ReplyVO;


public interface LocalBussinessService {
	
	public List<LocalBussinessImageVO> findById(Long productNo);
	
	public void register(LocalBussinessVO lbvo) throws Exception;
	
	public List<LocalBussinessVO> localBussinessSelectAll() throws Exception;
	
	public LocalBussinessVO localGetDetail(Long productNo) throws Exception;
	
	public int increaseRevisitCount(Long productNo) throws Exception;
	
	public List<LocalBussinessVO> localBussinessList() throws Exception;
	
	public List<LocalBussinessVO> productGetDetailImage(Long productNo) throws Exception;
	
	public void insertChat(ReplyVO rvo) throws Exception;
	
}
