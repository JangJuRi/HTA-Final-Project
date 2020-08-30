package com.sample.dto;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sample.vo.MoimUser;

public class DetailViewMoimsDto {

	//모임 정보
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
	@JsonFormat(pattern="yyyy. MM. dd")
	private Date joinDate;
	@JsonFormat(pattern="yyyy. MM. dd")
	private Date createdDate;
	
	// 카테고리별 내용
	private long subCateNo;
	private String subCateName;
	private long locationNo;
	private String locationName;
	private long mainCateNo;
	private String mainCateName;
	
	// 좋아요 체크
	private String likesYn;
	
	// 방장 정보
	private String userId;
	private String nickName;
	private String profileImage;
	private String userContent;
	
	// 로그인 유저 가입여부 체크
	private int checkJoin;
	
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
	public String getSubCateName() {
		return subCateName;
	}
	public void setSubCateName(String subCateName) {
		this.subCateName = subCateName;
	}
	public long getLocationNo() {
		return locationNo;
	}
	public void setLocationNo(long locationNo) {
		this.locationNo = locationNo;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
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
	public String getLikesYn() {
		return likesYn;
	}
	public void setLikesYn(String likesYn) {
		this.likesYn = likesYn;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public String getUserContent() {
		return userContent;
	}
	public void setUserContent(String userContent) {
		this.userContent = userContent;
	}
	
	public int getCheckJoin() {
		return checkJoin;
	}
	
	public void setCheckJoin(int checkJoin) {
		this.checkJoin = checkJoin;
	}
}
