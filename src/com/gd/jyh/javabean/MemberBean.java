package com.gd.jyh.javabean;

public class MemberBean {
	private String userId;
	private String name;
	private String nickName;
	private String pwd;
	private String email;
	private String phone;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public MemberBean(String userId, String name, String nickName, String pwd, String email, String phone) {
		super();
		this.userId = userId;
		this.name = name;
		this.nickName = nickName;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "MemberBean [userId=" + userId + ", name=" + name + ", nickName=" + nickName + ", pwd=" + pwd
				+ ", email=" + email + ", phone=" + phone + "]";
	}
	

}
