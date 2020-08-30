package com.sample.vo;

import java.util.Date;

public class MoimPhoto {

	private long photoNo;
	private String photo;
	private long likes;
	private String deleteYn;
	private Date createdDate;
	private long moimNo;
	private String userId;
	
	public MoimPhoto() {}

	public long getPhotoNo() {
		return photoNo;
	}

	public void setPhotoNo(long photoNo) {
		this.photoNo = photoNo;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public long getLikes() {
		return likes;
	}

	public void setLikes(long likes) {
		this.likes = likes;
	}

	

	public String getDeleteYn() {
		return deleteYn;
	}

	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
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
