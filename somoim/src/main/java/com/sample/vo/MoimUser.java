package com.sample.vo;

import java.util.Date;

public class MoimUser {

	private String id;
	private String name;
	private String tel;
	private String password;
	private String nickname;
	private String email;
	private String birthDate;
	private String gender;
	private String content;
	private String deleteYN;
	private Date createdDate;
	private long locationNo;
	private String profileImage;
	private String suspendedAccountYn;
	
	public MoimUser() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDeleteYN() {
		return deleteYN;
	}

	public void setDeleteYN(String deleteYN) {
		this.deleteYN = deleteYN;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public long getLocationNo() {
		return locationNo;
	}

	public void setLocationNo(long locationNo) {
		this.locationNo = locationNo;
	}

	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}

	public String getSuspendedAccountYn() {
		return suspendedAccountYn;
	}
	
	public void setSuspendedAccountYn(String suspendedAccountYn) {
		this.suspendedAccountYn = suspendedAccountYn;
	}
	
	@Override
	public String toString() {
		return "MoimUser [id=" + id + ", name=" + name + ", tel=" + tel + ", password=" + password + ", nickname="
				+ nickname + ", email=" + email + ", birthDate=" + birthDate + ", gender=" + gender + ", content="
				+ content + ", deleteYN=" + deleteYN + ", createdDate=" + createdDate + ", locationNo=" + locationNo
				+ ", profileImage=" + profileImage + "]";
	}
	
	
}
