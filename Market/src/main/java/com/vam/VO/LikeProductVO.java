package com.vam.VO;

import java.util.List;

public class LikeProductVO {
	private Long productNo;
	private int likeproduct;
	private String nickName;
	
	private List<ProductVO> pvo;

	public Long getProductNo() {
		return productNo;
	}

	public void setProductNo(Long productNo) {
		this.productNo = productNo;
	}

	public int getLikeproduct() {
		return likeproduct;
	}

	public void setLikeproduct(int likeproduct) {
		this.likeproduct = likeproduct;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public List<ProductVO> getPvo() {
		return pvo;
	}

	public void setPvo(List<ProductVO> pvo) {
		this.pvo = pvo;
	}

	@Override
	public String toString() {
		return "LikeProductVO [productNo=" + productNo + ", likeproduct=" + likeproduct + ", nickName=" + nickName
				+ ", pvo=" + pvo + "]";
	}	
	
	
}
