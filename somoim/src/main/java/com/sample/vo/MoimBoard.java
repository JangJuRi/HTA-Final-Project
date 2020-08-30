package com.sample.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MoimBoard {

	private long boardNo;
	private String title;
	private String content;
	private long views;
	private String deleteYn;
	private String profileImage;
	
	@JsonFormat(pattern="yyyy. MM. dd")
	private Date createdDate;
	
	private long moimNo;
	private String userId;
	private long boardCateNo;
	
	public MoimBoard() {}

	public long getBoardNo() {
		return boardNo;
	}
	
	public void setBoardNo(long boardNo) {
		this.boardNo = boardNo;
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

	public long getViews() {
		return views;
	}

	public void setViews(long views) {
		this.views = views;
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

	public long getBoardCateNo() {
		return boardCateNo;
	}

	public void setBoardCateNo(long boardCateNo) {
		this.boardCateNo = boardCateNo;
	}
	
	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}

	@Override
	public String toString() {
		return "MoimBoard [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", views=" + views
				+ ", deleteYn=" + deleteYn + ", createdDate=" + createdDate + ", moimNo=" + moimNo + ", userId="
				+ userId + ", boardCateNo=" + boardCateNo + "]";
	}
	
	
	
}
