package com.vam.VO;

import java.util.List;

public class ReplyVO {
	private int replyNo;
	private Long productNo;
	private int memberNo;
	private String content;
	
	private List<MemberVO> mvo;
	private List<LocalBussinessVO> lbvo;
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
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
	public List<LocalBussinessVO> getLbvo() {
		return lbvo;
	}
	public void setLbvo(List<LocalBussinessVO> lbvo) {
		this.lbvo = lbvo;
	}
	@Override
	public String toString() {
		return "ReplyVO [replyNo=" + replyNo + ", productNo=" + productNo + ", memberNo=" + memberNo + ", content="
				+ content + ", mvo=" + mvo + ", lbvo=" + lbvo + "]";
	}
	
	
	
}
