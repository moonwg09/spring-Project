package com.vam.VO;

import java.util.List;

public class LocalBussinessVO {
    private Long productNo;
    private String title;
    private String writer;
    private int categori;
    private String content;
    private String address;
    private String menu;
    private String price;
    private int replyCount, revisitCount,subCategory;
	
    private List<LocalBussinessImageVO> local_imageList;
    
    private List<MemberVO> mvo;

	public Long getProductNo() {
		return productNo;
	}

	public void setProductNo(Long productNo) {
		this.productNo = productNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}

	public int getRevisitCount() {
		return revisitCount;
	}

	public void setRevisitCount(int revisitCount) {
		this.revisitCount = revisitCount;
	}

	public int getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(int subCategory) {
		this.subCategory = subCategory;
	}

	public List<LocalBussinessImageVO> getLocal_imageList() {
		return local_imageList;
	}

	public void setLocal_imageList(List<LocalBussinessImageVO> local_imageList) {
		this.local_imageList = local_imageList;
	}

	@Override
	public String toString() {
		return "LocalBussinessVO [productNo=" + productNo + ", title=" + title + ", writer=" + writer + ", categori="
				+ categori + ", content=" + content + ", address=" + address + ", menu=" + menu + ", price=" + price
				+ ", replyCount=" + replyCount + ", revisitCount=" + revisitCount + ", subCategory=" + subCategory
				+ ", local_imageList=" + local_imageList + "]";
	}

	
    
}
