package com.sample.web.form;

import org.springframework.web.multipart.MultipartFile;

public class ModifyForm {

	private String nickname;
	private String password;
	private String content;
	private String email;
	private long locationNo;
	private MultipartFile upfile;
	
	public ModifyForm() {}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public MultipartFile getUpfile() {
		return upfile;
	}

	public void setUpfile(MultipartFile upfile) {
		this.upfile = upfile;
	}

	public long getLocationNo() {
		return locationNo;
	}

	public void setLocationNo(long locationNo) {
		this.locationNo = locationNo;
	}

	@Override
	public String toString() {
		return "ModifyForm [nickname=" + nickname + ", password=" + password + ", content=" + content + ", email="
				+ email + ", locationNo=" + locationNo + ", upfile=" + upfile + "]";
	}
	
	
}
