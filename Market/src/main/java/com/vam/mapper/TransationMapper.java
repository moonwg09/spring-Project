package com.vam.mapper;

import java.util.List;

import com.vam.VO.MemberVO;
import com.vam.VO.ProductVO;

public interface TransationMapper {
	// 게시글 전체보기
	public List<ProductVO> productList(int categori);
	
	// 게시글 상세보기
	public ProductVO productGetDetail(int productNo);
	
	// 게시글 작성한 유저 정보 불러오기
	public ProductVO getMemberAndProduct(int productNo);
	
	// 게시글 조회수 증가
	public int increaseViewCount(int productNo);
}
