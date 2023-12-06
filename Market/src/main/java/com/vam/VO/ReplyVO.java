package com.vam.VO;

import java.util.List;

public class ReplyVO {
	private int replyNO;
	private Long productNo;
	private int memberNo;
	private String content;
	
	private List<MemberVO> mvo;
	private List<ProductVO> pvo;
	public int getReplyNO() {
		return replyNO;
	}
	public void setReplyNO(int replyNO) {
		this.replyNO = replyNO;
	}
	public Long getProductNo() {
		return productNo;
	}
	public void setProductNo(Long productNo) {
		this.productNo = productNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<MemberVO> getMvo() {
		return mvo;
	}
	public void setMvo(List<MemberVO> mvo) {
		this.mvo = mvo;
	}
	public List<ProductVO> getPvo() {
		return pvo;
	}
	public void setPvo(List<ProductVO> pvo) {
		this.pvo = pvo;
	}
	@Override
	public String toString() {
		return "ReplyVO [replyNO=" + replyNO + ", productNo=" + productNo + ", memberNo=" + memberNo + ", content="
				+ content + ", mvo=" + mvo + ", pvo=" + pvo + "]";
	}
	
	
	
	
}
