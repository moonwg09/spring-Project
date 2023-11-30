package com.vam.Impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.vam.VO.ChatVO;
import com.vam.VO.ChattingVO;
import com.vam.VO.ProductImageVO;
import com.vam.VO.ProductVO;
import com.vam.mapper.TransationImageMapper;
import com.vam.mapper.TransationMapper;
import com.vam.VO.ChattingVO;
import com.vam.service.TransationService;

@Service
public class TransationServiceImpl implements TransationService {

	@Autowired
	TransationMapper productmapper;
	
	@Autowired
	TransationImageMapper imageListmapper;

	// ��ǰ ��ü����
	@Override
	public List<ProductVO> productList(int categori) throws Exception {
		return productmapper.productList(categori);
	}

	// ��ǰ �󼼺���
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

	@Override
	public void insertChat(ChatVO cvo) throws Exception {
		productmapper.insertChat(cvo);
		
	}
	@Override
	public List<ChatVO> selectChat(int productNo) throws Exception {
	
		return productmapper.selectChat(productNo);

	}
	@Override
	public void deleteComment(int chatNo) throws Exception {
		productmapper.deleteComment(chatNo);
		
	}
	@Override
	public void writeProductPost(ProductVO pvo) throws Exception {
		productmapper.writeProductPost(pvo);
		
	}

	@Override
	public List<ProductImageVO> getImageList(long productNo) {
		return imageListmapper.findById(productNo);
	}
}
