package com.vam.VO;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class ProductVO {
	private String title,content,address,writer;

	private int categori,price,viewcount,chatcount,likecount;
	
	private Long productNo;
	
	private Date regDate;
	
	private List<ProductImageVO> product_imageList;
	
	public ProductVO() {
		this.product_imageList = new ArrayList<>();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
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

	public int getViewcount() {
		return viewcount;
	}

	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}

	public int getChatcount() {
		return chatcount;
	}

	public void setChatcount(int chatcount) {
		this.chatcount = chatcount;
	}

	public int getLikecount() {
		return likecount;
	}

	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}

	public Long getProductNo() {
		return productNo;
	}

	public void setProductNo(Long productNo) {
		this.productNo = productNo;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public List<ProductImageVO> getProduct_imageList() {
		return product_imageList;
	}

	public void setProduct_imageList(List<ProductImageVO> product_imageList) {
		this.product_imageList = product_imageList;
	}

	@Override
	public String toString() {
		return "ProductVO [title=" + title + ", content=" + content + ", address=" + address + ", writer=" + writer
				+ ", categori=" + categori + ", price=" + price + ", viewcount=" + viewcount + ", chatcount="
				+ chatcount + ", likecount=" + likecount + ", productNo=" + productNo + ", regDate=" + regDate
				+ ", product_imageList=" + product_imageList + "]";
	}

	
	
	
	
	



	
}
