package com.face.model;

public class MemberVO {
	private String email;
	private String pw;
	private String phone;
	private String facepath;
		
	public MemberVO() {
	}
	
	public MemberVO(String email, String pw) {
		super();
		this.email = email;
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getFacepath() {
		return facepath;
	}

	public void setFacepath(String facepath) {
		this.facepath = facepath;
	}

	@Override
	public String toString() {
		return "MemberVO [email=" + email + ", pw=" + pw + ", phone=" + phone + ", facepath=" + facepath + "]";
	}
	
	
}
