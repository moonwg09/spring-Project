package com.vam.VO;

import java.sql.Date;
import java.util.List;



public class MemberVO {
	private String id,password,nickName,email,addr1,addr2,phone,image;
	private double manner;
	private int memberNo,adminCk;
	private Date regDate;
	
	private List<ProductVO> pvo;
	
	private List<LikeProductVO> lpvo;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getManner() {
		return manner;
	}

	public void setManner(double manner) {
		this.manner = manner;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getAdminCk() {
		return adminCk;
	}

	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public List<ProductVO> getPvo() {
		return pvo;
	}

	public void setPvo(List<ProductVO> pvo) {
		this.pvo = pvo;
	}

	public List<LikeProductVO> getLpvo() {
		return lpvo;
	}

	public void setLpvo(List<LikeProductVO> lpvo) {
		this.lpvo = lpvo;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", nickName=" + nickName + ", email=" + email
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", phone=" + phone + ", image=" + image + ", manner="
				+ manner + ", memberNo=" + memberNo + ", adminCk=" + adminCk + ", regDate=" + regDate + ", pvo=" + pvo
				+ ", lpvo=" + lpvo + "]";
	}
	
	

	
}	
