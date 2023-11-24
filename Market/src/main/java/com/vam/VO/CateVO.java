package com.vam.VO;

public class CateVO {
	
	/* ī�װ� ��� */
	private int tier;
	
	/* ī�װ� �̸� */
	private String cateName;
	
	/* ī�װ� �ѹ� */
	private String cateCode;
	
	/* ���� ī�װ� */
	private String cateParent;

	public int getTier() {
		return tier;
	}

	public void setTier(int tier) {
		this.tier = tier;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public String getCateParent() {
		return cateParent;
	}

	public void setCateParent(String cateParent) {
		this.cateParent = cateParent;
	}

	@Override
	public String toString() {
		return "CateVO [tier=" + tier + ", cateName=" + cateName + ", cateCode=" + cateCode + ", cateParent="
				+ cateParent + "]";
	}
	
	

}
