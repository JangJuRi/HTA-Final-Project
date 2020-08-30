package com.sample.web.form;

import javax.validation.constraints.NotBlank;

public class LoginForm {

	@NotBlank(message = "아이디를 입력해주세요.")
	private String userId;
	
	@NotBlank(message = "비밀번호를 입력해주세요.")
	private String userpwd;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	@Override
	public String toString() {
		return "LoginForm [userId=" + userId + ", userpwd=" + userpwd + "]";
	}
	
	
	
}
