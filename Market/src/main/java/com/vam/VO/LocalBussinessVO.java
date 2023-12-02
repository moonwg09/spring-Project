package com.vam.VO;

public class LocalBussinessVO {
    private int productNo;
    private String img;
    private String title;
    private String writer;
    private int categori;
    private String content;
    private String address;
    private String menu;
    private String price;
    private int replyCount, revisitCount,subCategory;
    
    
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
	public void setCategori(int categori) {
		this.categori = categori;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
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
	public String getCategori() {
		return categori;
	}
	public void setCategori(String categori) {
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
	@Override
	public String toString() {
		return "LocalBussinessVO [productNo=" + productNo + ", img=" + img + ", title=" + title + ", writer=" + writer
				+ ", categori=" + categori + ", content=" + content + ", address=" + address + ", menu=" + menu
				+ ", price=" + price + ", replyCount=" + replyCount + ", revisitCount=" + revisitCount
				+ ", subCategory=" + subCategory + "]";
	}
    
    
}
