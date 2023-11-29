package com.vam.service;

import java.util.List;

import com.vam.VO.ChatVO;
import com.vam.VO.ProductVO;

public interface TransationService {
	public List<ProductVO> productList(int categori) throws Exception;
	
	public ProductVO productGetDetail(int productNo) throws Exception;

	public ProductVO getMemberAndProduct(int productNo) throws Exception;
	
	public int increaseViewCount(int productNo)throws Exception;
	
	public void insertChat(ChatVO cvo) throws Exception;
	
	public List<ChatVO> selectChat(int productNo) throws Exception;
	
	public void deleteComment(int chatNo) throws Exception;
	
	public void writeProductPost(ProductVO pvo) throws Exception;
}
