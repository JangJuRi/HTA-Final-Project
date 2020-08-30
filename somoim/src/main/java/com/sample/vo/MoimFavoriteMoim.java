package com.sample.vo;

import java.util.Date;

public class MoimFavoriteMoim {

	private long moimNo;
	private String userId;
	private String title;
	private String content;
	private Date likedDate;
	private String profileImage;
	private String premiumYn;
	
	
	
	

	public String getPremiumYn() {
		return premiumYn;
	}

	public void setPremiumYn(String premiumYn) {
		this.premiumYn = premiumYn;
	}

	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
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

	public Date getLikedDate() {
		return likedDate;
	}

	public void setLikedDate(Date likedDate) {
		this.likedDate = likedDate;
	}

	public MoimFavoriteMoim() {}

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
