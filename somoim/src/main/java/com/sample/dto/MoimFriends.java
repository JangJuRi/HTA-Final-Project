package com.sample.dto;

/* 모임에 가입된 친구 조회에 쓰는 거 */

public class MoimFriends {

	private long moimNo;
	private String userId;
	
	public MoimFriends() {}
	
	public MoimFriends(long moimNo, String userId) {
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
	
	
}
