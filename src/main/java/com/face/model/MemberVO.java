package com.face.model;

public class MemberVO {
	private String id;
	private String pw;
	private String phone;
	
	
	public MemberVO() {
		super();
	}
		
	
	public MemberVO(String id) {
		this.id = id;
	}
	
	public MemberVO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	
	public MemberVO(String id, String pw, String phone) {
		this.id = id;
		this.pw = pw;
		this.phone = phone;
	}

	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", phone=" + phone + "]";
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
	
	
		
	
	
}
