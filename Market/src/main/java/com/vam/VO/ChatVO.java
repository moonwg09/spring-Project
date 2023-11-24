package com.vam.VO;

public class ChatVO {
	private int chatNo, productNo;
	private String content;
	
	private ProductVO pvo;
	
	public ProductVO getPvo() {
		return pvo;
	}
	public void setPvo(ProductVO pvo) {
		this.pvo = pvo;
	}
	public int getChatNo() {
		return chatNo;
	}
	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "ChatVO [chatNo=" + chatNo + ", productNo=" + productNo + ", content=" + content + ", pvo=" + pvo + "]";
	}
	
	
}
