package com.vam.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.vam.VO.ProductVO;
import com.vam.mapper.TransationMapper;
import com.vam.service.TransationService;

@Service
public class TransationServiceImpl implements TransationService {

	@Autowired
	TransationMapper productmapper;

	// 상품 전체보기
	@Override
	public List<ProductVO> productList(int categori) throws Exception {
		return productmapper.productList(categori);
	}

	// 상품 상세보기
	@Override
	public ProductVO productGetDetail(int productNo) throws Exception {

		return productmapper.productGetDetail(productNo);
	}

	@Override
	public ProductVO getMemberAndProduct(int productNo) {
		// TODO Auto-generated method stub
		return productmapper.getMemberAndProduct(productNo);
	}

	@Override
	public int increaseViewCount(int productNo) {
		return productmapper.increaseViewCount(productNo);
	}
}
