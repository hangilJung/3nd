package com.face.model;

public class MemberVO {
	private String id;
	private String pw;
	private String phone;
	private String img;
	
	
	
	
	public MemberVO() {
	}	
	
	

	public MemberVO(String id, String pw, String phone) {	
		this.id = id;
		this.pw = pw;
		this.phone = phone;
	}



	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", phone=" + phone + ", img=" + img + "]";
	}	
	
}
