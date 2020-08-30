package com.sample.dto;

public class MoimFollowDto {

	/*
	 * 이거 내가 만들었으니 절대 건들지마셈 진짜 건들면 다 삭제하고 학원  뜬다
	 */
	
	// moim_follow
	private String userId;
	private String folUserId;

	// moim_user
	private String image;
	private String nickname;
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getFolUserId() {
		return folUserId;
	}
	public void setFolUserId(String folUserId) {
		this.folUserId = folUserId;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	
	
}
