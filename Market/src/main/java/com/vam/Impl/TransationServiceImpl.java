package com.vam.Impl;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vam.VO.ChatVO;
import com.vam.VO.ChattingVO;
import com.vam.VO.ProductImageVO;
import com.vam.VO.ProductVO;
import com.vam.mapper.TransationImageMapper;
import com.vam.mapper.TransationMapper;
import com.vam.VO.ChattingVO;
import com.vam.service.TransationService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class TransationServiceImpl implements TransationService {

	@Autowired
	TransationMapper productmapper;

	@Autowired
	TransationImageMapper imagemapper;

	// ï¿½ï¿½Ç° ï¿½ï¿½Ã¼ï¿½ï¿½ï¿½ï¿½
	@Override
	public List<ProductVO> productList(int categori) throws Exception {
		return productmapper.productList(categori);
	}

	// ï¿½ï¿½Ç° ï¿½ó¼¼ºï¿½ï¿½ï¿½
	@Override
	public ProductVO productGetDetail(Long productNo) throws Exception {

		return productmapper.productGetDetail(productNo);
	}

	@Override
	public ProductVO getMemberAndProduct(Long productNo) {
		// TODO Auto-generated method stub
		return productmapper.getMemberAndProduct(productNo);
	}

	@Override
	public int increaseViewCount(Long productNo) {
		return productmapper.increaseViewCount(productNo);
	}

	@Override
	public void insertChat(ChatVO cvo) throws Exception {
		productmapper.insertChat(cvo);

	}

	public List<ChatVO> selectChat(Long productNo) throws Exception {
	
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
	public void register(ProductVO pvo) throws Exception {
			System.out.println(pvo.getProduct_imageList() +"*****************8");
		productmapper.writeProductPost(pvo);
			// register on product_image
			if(pvo.getProduct_imageList() != null || pvo.getProduct_imageList().size() > 0) {
				pvo.getProduct_imageList().forEach(image->{
					image.setProductNo(pvo.getProductNo());
					
					imagemapper.insert(image);
				
					log.info("register imageList "+image);
					System.out.println("register imageList  ##################" +image);
				});
			}else {
				System.out.println("³ëÀÌ¹ÌÁö ÀúÀå##################");
			}
	}

	@Override
	public List<ProductImageVO> findById(Long productNo) {
		// TODO Auto-generated method stub
		return imagemapper.findById(productNo);
	}
	
	@Override
	public List<ProductImageVO> getImageList(Long productNo) throws Exception {
		return imagemapper.findById(productNo);
	}
@Override
public void deleteProduct(int proeuctNo) throws Exception {
	productmapper.deleteProduct(proeuctNo);
	
}
	
}
