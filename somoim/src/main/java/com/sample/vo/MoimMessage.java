package com.sample.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MoimMessage {

	private long messageNo;
	private String userId;
	private String title;
	private String content;
	private String sendUser;
	private String receiveUser;
	private String readYn;
	@JsonFormat(pattern="yyyy.MM.dd")
	private Date createdDate;
	
	public MoimMessage() {
		
	}

	public MoimMessage(String title, String content, String sendUser, String receiveUser) {
		super();
		this.title = title;
		this.content = content;
		this.sendUser = sendUser;
		this.receiveUser = receiveUser;
	}

	public long getMessageNo() {
		return messageNo;
	}
	public void setMessageNo(long messageNo) {
		this.messageNo = messageNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSendUser() {
		return sendUser;
	}
	public void setSendUser(String sendUser) {
		this.sendUser = sendUser;
	}
	public String getReceiveUser() {
		return receiveUser;
	}
	public void setReceiveUser(String receiveUser) {
		this.receiveUser = receiveUser;
	}
	public String getReadYn() {
		return readYn;
	}
	public void setReadYn(String readYn) {
		this.readYn = readYn;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
	
}
