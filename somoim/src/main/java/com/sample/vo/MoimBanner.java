package com.sample.vo;

import org.springframework.web.multipart.MultipartFile;

public class MoimBanner {

	private long moimNo;
	private String banner;
	private MultipartFile upfile;
	
	public MoimBanner() {}
	
	public long getMoimNo() {
		return moimNo;
	}
	public void setMoimNo(long moimNo) {
		this.moimNo = moimNo;
	}
	public String getBanner() {
		return banner;
	}
	public void setBanner(String banner) {
		this.banner = banner;
	}

	public MultipartFile getUpfile() {
		return upfile;
	}

	public void setUpfile(MultipartFile upfile) {
		this.upfile = upfile;
	}
	
	
}
