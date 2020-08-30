package com.sample.dto;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sample.vo.MoimUser;

public class MoimMainDto {

	private long moimNo;
	private String title;
	private String userId;
	private long joinCount;
	private long headCount;
	private String content;
	private String image;
	private long fee;
	private long likes;
	private String premiumYn;
	private String deleteYn; 
	
	@JsonFormat(pattern="yyyy. MM. dd")
	private Date joinDate;
	@JsonFormat(pattern="yyyy. MM. dd")
	private Date createdDate;
	
	private long subCateNo;
	private String subCateName;
	private long locationNo;
	private String locationName;
	private long mainCateNo;
	private String mainCateName;
	private List<MoimUser> friends;
	
	private String likesYn;
	private String banner;
	
	
	
	public String getSubCateName() {
		return subCateName;
	}
	public void setSubCateName(String subCateName) {
		this.subCateName = subCateName;
	}
	public long getMainCateNo() {
		return mainCateNo;
	}
	public void setMainCateNo(long mainCateNo) {
		this.mainCateNo = mainCateNo;
	}
	public String getMainCateName() {
		return mainCateName;
	}
	public void setMainCateName(String mainCateName) {
		this.mainCateName = mainCateName;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	@Override
	public String toString() {
		return "MoimMainDto [moimNo=" + moimNo + ", title=" + title + ", userId=" + userId + ", joinCount=" + joinCount
				+ ", headCount=" + headCount + ", content=" + content + ", image=" + image + ", fee=" + fee + ", likes="
				+ likes + ", primiumYn=" + premiumYn + ", deleteYn=" + deleteYn + ", joinDate=" + joinDate
				+ ", createdDate=" + createdDate + ", subCateNo=" + subCateNo + ", locationNo=" + locationNo + "]";
	}
	
	public List<MoimUser> getFriends() {
		return friends;
	}
	
	public void setFriends(List<MoimUser> friends) {
		this.friends = friends;
	}
	public String getLikesYn() {
		return likesYn;
	}
	public void setLikesYn(String likesYn) {
		this.likesYn = likesYn;
	}
	public String getBanner() {
		return banner;
	}
	public void setBanner(String banner) {
		this.banner = banner;
	}
	
	
}
