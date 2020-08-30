package com.sample.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MoimAlram {

	private long alramNo;
	private String message;
	private String type;
	private String readYn;
	private String userId;
	private String loginUserId;
	@JsonFormat(pattern="yyyy.MM.dd")
	private Date createdDate;
	
	public MoimAlram() {}
	

	public MoimAlram(String message, String type, String userId, String loginUserId) {
		super();
		this.message = message;
		this.type = type;
		this.userId = userId;
		this.loginUserId = loginUserId;
	}


	public long getAlramNo() {
		return alramNo;
	}
	
	public void setAlramNo(long alramNo) {
		this.alramNo = alramNo;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getReadYn() {
		return readYn;
	}

	public void setReadYn(String readYn) {
		this.readYn = readYn;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getLoginUserId() {
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
	
}
