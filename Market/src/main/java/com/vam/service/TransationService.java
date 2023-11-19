package com.vam.service;

import java.util.List;

import com.vam.VO.ProductVO;

public interface TransationService {
	public List<ProductVO> productList() throws Exception;
}
