package com.vam.mapper;

import java.util.List;

import com.vam.VO.LocalBussinessVO;
import com.vam.VO.ReplyVO;


public interface LocalBussinessMapper {
	
	public List<LocalBussinessVO> localBussinessSelectAll() throws Exception ;
	
	public void localBussinessInsert(LocalBussinessVO lbvo) throws Exception;
	
	public LocalBussinessVO localGetDetail(Long productNo) throws Exception;

	public int increaseRevisitCount(Long productNo) throws Exception;
	
	public List<LocalBussinessVO> localBussinessList() throws Exception;
	
	public List<LocalBussinessVO> productGetDetailImage(Long productNo) throws Exception;
	
	public void insertChat(ReplyVO rvo) throws Exception;
	
	public List<ReplyVO> selectChat(Long productNo) throws Exception;
	
	public void deleteComment(int replyNo) throws Exception;
	
	public List<ReplyVO> selectChatAll() throws Exception;
	
}
