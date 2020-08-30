package com.sample.dto;

public class ManagerDto {

	private String userId;
	private long warningCount;
	private String accountStatus;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public long getWarningCount() {
		return warningCount;
	}
	public void setWarningCount(long warningCount) {
		this.warningCount = warningCount;
	}
	public String getAccountStatus() {
		return accountStatus;
	}
	public void setAccountStatus(String accountStatus) {
		this.accountStatus = accountStatus;
	}
	
	
}
