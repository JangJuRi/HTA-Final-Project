package com.sample.web.form;

import org.springframework.web.multipart.MultipartFile;

public class PhotoForm {

	private long moimNo;
	private String userId;
	private MultipartFile upfile;
	
	public PhotoForm() {}

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

	public MultipartFile getUpfile() {
		return upfile;
	}

	public void setUpfile(MultipartFile upfile) {
		this.upfile = upfile;
	}
	
}
