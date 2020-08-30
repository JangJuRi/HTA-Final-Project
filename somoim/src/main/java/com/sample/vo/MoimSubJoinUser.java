package com.sample.vo;

public class MoimSubJoinUser {

	private long subMoimNo;
	private long moimNo;
	private String userId;
	
	public MoimSubJoinUser() {}

	public MoimSubJoinUser(long subMoimNo, String userId) {
		this.subMoimNo = subMoimNo;
		this.userId = userId;
	}	
	

	public MoimSubJoinUser(long subMoimNo, long moimNo, String userId) {
		this.subMoimNo = subMoimNo;
		this.moimNo = moimNo;
		this.userId = userId;
	}

	public long getSubMoimNo() {
		return subMoimNo;
	}

	public void setSubMoimNo(long subMoimNo) {
		this.subMoimNo = subMoimNo;
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
	
	
}
