package com.sample.vo;

public class MoimPhotoLikes {

	private String userId;
	private long photoNo;
	private long moimNo;
	
	public MoimPhotoLikes() {}
	
	

	public MoimPhotoLikes(String userId, long moimNo) {
		this.userId = userId;
		this.moimNo = moimNo;
	}

	public MoimPhotoLikes(String userId, long photoNo, long moimNo) {
		this.userId = userId;
		this.photoNo = photoNo;
		this.moimNo = moimNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public long getPhotoNo() {
		return photoNo;
	}

	public void setPhotoNo(long photoNo) {
		this.photoNo = photoNo;
	}

	public long getMoimNo() {
		return moimNo;
	}

	public void setMoimNo(long moimNo) {
		this.moimNo = moimNo;
	}



	@Override
	public String toString() {
		return "MoimPhotoLikes [userId=" + userId + ", photoNo=" + photoNo + ", moimNo=" + moimNo + "]";
	}
	
	
	
}
