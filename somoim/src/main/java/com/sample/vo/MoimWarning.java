package com.sample.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MoimWarning {
	private long warningNo;
	private String userId;
	private String loginUserId;
	private String content;
	private String type;
	private long typeNo;
	@JsonFormat(pattern="yyyy.MM.dd")
	private Date createdDate;
	private String deleteYN;
	
	public long getWarningNo() {
		return warningNo;
	}
	public void setWarningNo(long warningNo) {
		this.warningNo = warningNo;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public long getTypeNo() {
		return typeNo;
	}
	public void setTypeNo(long typeNo) {
		this.typeNo = typeNo;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public String getDeleteYN() {
		return deleteYN;
	}
	public void setDeleteYN(String deleteYN) {
		this.deleteYN = deleteYN;
	}
	
	
}
