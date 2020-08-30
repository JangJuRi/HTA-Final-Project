package com.sample.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MoimSubMoim {

	private long subMoimNo;
	private String title;
	private String location;
	private long headCount;
	private long fee;
	private String deleteYn;
	
	@JsonFormat(pattern="yyyy. MM. dd HH:mm")
	private Date joinDate;
	private long joinCount;
	private Date createdDate;
	private String userId;
	private long moimNo;
	
	public MoimSubMoim () {}

	public long getSubMoimNo() {
		return subMoimNo;
	}

	public void setSubMoimNo(long subMoimNo) {
		this.subMoimNo = subMoimNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public long getHeadCount() {
		return headCount;
	}

	public void setHeadCount(long headCount) {
		this.headCount = headCount;
	}

	public long getFee() {
		return fee;
	}

	public void setFee(long fee) {
		this.fee = fee;
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

	public long getJoinCount() {
		return joinCount;
	}

	public void setJoinCount(long joinCount) {
		this.joinCount = joinCount;
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

	public long getMoimNo() {
		return moimNo;
	}

	public void setMoimNo(long moimNo) {
		this.moimNo = moimNo;
	}
	
	
}
