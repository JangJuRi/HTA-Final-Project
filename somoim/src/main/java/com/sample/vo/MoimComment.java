package com.sample.vo;

import java.util.Date;

public class MoimComment {

	private long commentNo;
	private String title;
	private String deleteYn;
	private Date createdDate;
	private String userId;
	private long boardNo;
	private long mainCommentNo;
	private String profileImage;
	
	public MoimComment() {}

	public long getCommentNo() {
		return commentNo;
	}
	
	public void setCommentNo(long commentNo) {
		this.commentNo = commentNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public long getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(long boardNo) {
		this.boardNo = boardNo;
	}

	public long getMainCommentNo() {
		return mainCommentNo;
	}

	public void setMainCommentNo(long mainCommentNo) {
		this.mainCommentNo = mainCommentNo;
	}
	
	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}

	@Override
	public String toString() {
		return "MoimComment [commentNo=" + commentNo + ", title=" + title + ", deleteYn=" + deleteYn + ", createdDate="
				+ createdDate + ", userId=" + userId + ", boardNo=" + boardNo + ", mainCommentNo=" + mainCommentNo
				+ "]";
	}
	
	
	
}
