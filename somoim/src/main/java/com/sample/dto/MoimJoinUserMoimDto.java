package com.sample.dto;

import java.util.Date;


import com.fasterxml.jackson.annotation.JsonFormat;

public class MoimJoinUserMoimDto {

		// moim_join_user
		private long moimNo;
		private String userId;
		private String userRole;
		@JsonFormat(pattern="yyyy.MM.dd")
		private Date createdDate;
		
		// moim_main
		private String title;
		private String image;
		private String content;
		private long joinCount;
		private long headCount;
		private long likes;
		@JsonFormat(pattern="yyyy. MM. dd HH:mm")
		private Date joinDate;
		
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
		public String getUserRole() {
			return userRole;
		}
		public void setUserRole(String userRole) {
			this.userRole = userRole;
		}
		public Date getCreatedDate() {
			return createdDate;
		}
		public void setCreatedDate(Date createdDate) {
			this.createdDate = createdDate;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
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
		
		public long getLikes() {
			return likes;
		}
		
		public void setLikes(long likes) {
			this.likes = likes;
		}
		
		public Date getJoinDate() {
			return joinDate;
		}
		
		public void setJoinDate(Date joinDate) {
			this.joinDate = joinDate;
		}
		
}
