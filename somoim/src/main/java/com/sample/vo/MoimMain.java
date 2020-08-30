package com.sample.vo;

import java.util.Date;

public class MoimMain {

	private long moimNo;
	private String title;
	private long joinCount;
	private long headCount;
	private String content;
	private String image;
	private long fee;
	private long likes;
	private String premiumYn;
	private String deleteYn; 
	private Date joinDate;
	private Date createdDate;
	private long subCateNo; 
	private long locationNo;

	
	public MoimMain () {}
	
	
	public long getMoimNo() {
		return moimNo;
	}
	public void setMoimNo(long moimNo) {
		this.moimNo = moimNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public long getJoinCount() {
		return joinCount;
	}
	public void setJoinCount(long joinCount) {
		this.joinCount = joinCount;
	}
	public long getHeadCount() {
		return headCount;
	}
	public void setHeadCount(long headCount) {
		this.headCount = headCount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public long getFee() {
		return fee;
	}
	public void setFee(long fee) {
		this.fee = fee;
	}
	public long getLikes() {
		return likes;
	}
	public void setLikes(long likes) {
		this.likes = likes;
	}

	public String getPremiumYn() {
		return premiumYn;
	}


	public void setPremiumYn(String premiumYn) {
		this.premiumYn = premiumYn;
	}

	public String getDeleteYn() {
		return deleteYn;
	}
	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public long getSubCateNo() {
		return subCateNo;
	}
	public void setSubCateNo(long subCateNo) {
		this.subCateNo = subCateNo;
	}
	public long getLocationNo() {
		return locationNo;
	}
	public void setLocationNo(long locationNo) {
		this.locationNo = locationNo;
	}
	
	
}
