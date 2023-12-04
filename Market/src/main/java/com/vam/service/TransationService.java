package com.vam.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.vam.VO.ChatVO;
import com.vam.VO.NoticeVO;
import com.vam.VO.ProductImageVO;
import com.vam.VO.ProductVO;

public interface TransationService {
	
	public void register(ProductVO pvo) throws Exception;
	
	public List<ProductImageVO> findById(Long productNo);
	public List<ProductVO> productList(int categori) throws Exception;
	
	public ProductVO productGetDetail(Long productNo) throws Exception;
	public List<ProductVO> productGetDetailImage(Long productNo);
	
	public ProductVO getMemberAndProduct(Long productNo) throws Exception;
	
	public int increaseViewCount(Long productNo)throws Exception;
	
	public void insertChat(ChatVO cvo) throws Exception;
	
	public List<ChatVO> selectChat(Long productNo) throws Exception;
	
	public List<ProductImageVO> getImageList(Long productNo) throws Exception;
	
	public void deleteComment(int chatNo) throws Exception;
	
	public void writeProductPost(ProductVO pvo) throws Exception;
	

	
	
	public void deleteProduct(int proeuctNo) throws Exception;
}
