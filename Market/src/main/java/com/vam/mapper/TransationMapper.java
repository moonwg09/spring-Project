package com.vam.mapper;

import java.util.List;

import com.vam.VO.MemberVO;
import com.vam.VO.ProductImageVO;
import com.vam.VO.ProductVO;
import com.vam.VO.ChatVO;

public interface TransationMapper {
	// 占쌉시깍옙 占쏙옙체占쏙옙占쏙옙
	public List<ProductVO> productList(int categori);
	
	// 占쌉시깍옙 占쏢세븝옙占쏙옙
	public ProductVO productGetDetail(Long productNo);
	
	// 占쌉시깍옙 占쌜쇽옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 占쌀뤄옙占쏙옙占쏙옙
	public ProductVO getMemberAndProduct(Long productNo);
	
	// 占쌉시깍옙 占쏙옙회占쏙옙 占쏙옙占쏙옙
	public int increaseViewCount(Long productNo);
	
	// 占쏙옙占� 占쏙옙占�
	public void insertChat(ChatVO cvo);

	public List<ChatVO> selectChat(Long productNo);
	
	public void deleteComment(int chatNo);
	
	public void writeProductPost(ProductVO pvo);
}
