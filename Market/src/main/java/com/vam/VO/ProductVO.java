package com.vam.VO;

import java.sql.Date;

public class ProductVO {
	private String title,img,content,address;
	private int productNo,categori,price,viewCount,chatCount;
	private Date regDate;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getCategori() {
		return categori;
	}
	public void setCategori(int categori) {
		this.categori = categori;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getChatCount() {
		return chatCount;
	}
	public void setChatCount(int chatCount) {
		this.chatCount = chatCount;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "ProductVO [title=" + title + ", img=" + img + ", content=" + content + ", address=" + address
				+ ", productNo=" + productNo + ", categori=" + categori + ", price=" + price + ", viewCount="
				+ viewCount + ", chatCount=" + chatCount + ", regDate=" + regDate + "]";
	}
	
}
