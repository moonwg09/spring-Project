package com.vam.service;

import java.util.List;

import com.vam.VO.ProductVO;

public interface TransationService {
	public List<ProductVO> productList(int categori) throws Exception;
	
	public ProductVO productGetDetail(int productNo) throws Exception;

	public ProductVO getMemberAndProduct(int productNo);
	
	public int increaseViewCount(int productNo);
	
	public ChatVO insertChat(int productNo);
}
