package com.sample.vo;

import java.util.Date;

public class MoimJoinUser {

	private long moimNo;
	private String userId;
	private String userRole;
	private Date createdDate;
	
	public MoimJoinUser() {}
	
	public MoimJoinUser(long moimNo, String userId) {
		this.moimNo = moimNo;
		this.userId = userId;
	}
	
	public long getMoimNo() {
		return moimNo;
	}
	public void setMoimNo(long moimNo) {
		this.moimNo = moimNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	@Override
	public String toString() {
		return "MoimJoinUser [moimNo=" + moimNo + ", userId=" + userId + ", userRole=" + userRole + ", createdDate="
				+ createdDate + "]";
	}
	
	
	
}
