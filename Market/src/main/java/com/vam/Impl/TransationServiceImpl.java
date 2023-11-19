package com.vam.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vam.VO.ProductVO;
import com.vam.mapper.TransationMapper;
import com.vam.service.TransationService;

@Service
public class TransationServiceImpl implements TransationService{

	@Autowired
	TransationMapper productmapper;
	
	@Override
public List<ProductVO> productList() throws Exception {
	return productmapper.productList();
}
}
