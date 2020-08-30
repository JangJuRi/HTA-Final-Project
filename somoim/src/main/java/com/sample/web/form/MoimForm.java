package com.sample.web.form;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

public class MoimForm {

	private long moimNo;
	
	@NotBlank(message = "제목을 입력해주세요.")
	private String title;
	
	@Min(message = "인원은 2~20명 까지입니다.", value = 2)
	@Max(message = "인원은 2~60명 까지입니다.", value = 60)
	private long headCount;
	
	@NotBlank(message = "내용을 입력해주세요.")
	private String content;
	
	@NotBlank(message = "사진을 등록해주세요.")
	private String image;
	
	private long fee;
	
	private String premiumYN;
	
	private Date joinDate;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	private long subCateNo;
	
	private long locationNo;
	
	private String userId;
	
	private MultipartFile upfile;

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

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String stringJoinDate) {
		stringJoinDate = stringJoinDate.replace("T", " ");
		try {
			this.joinDate = sdf.parse(stringJoinDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
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

	public String getPremiumYN() {
		return premiumYN;
	}

	public void setPremiumYN(String premiumYN) {
		this.premiumYN = premiumYN;
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

	@Override
	public String toString() {
		return "MoimForm [moimNo=" + moimNo + ", title=" + title + ", headCount=" + headCount + ", content=" + content
				+ ", image=" + image + ", fee=" + fee + ", premiumYN=" + premiumYN + ", joinDate=" + joinDate
				+ ", subCateNo=" + subCateNo + ", locationNo=" + locationNo + ", userId=" + userId + "]";
	}
	
	
}
