package com.sample.web.form;

public class BoardForm {

	private String title;
	private String content;
	private long moimNo;
	private String userId;
	private long boardCateNo;
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
	
	
}
