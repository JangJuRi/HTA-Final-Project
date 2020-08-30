package com.sample.dto;

import java.util.List;

import com.sample.vo.MoimSubMoim;

public class SubMoimDto {

	private MoimSubMoim moimSubMoim;
	private List<SubJoinUsers> subJoinUsers;
	
	public SubMoimDto(MoimSubMoim moimSubMoim, List<SubJoinUsers> subJoinUsers) {
		this.moimSubMoim = moimSubMoim;
		this.subJoinUsers = subJoinUsers;
	}
	
	public MoimSubMoim getMoimSubMoim() {
		return moimSubMoim;
	}
	public void setMoimSubMoim(MoimSubMoim moimSubMoim) {
		this.moimSubMoim = moimSubMoim;
	}
	public List<SubJoinUsers> getSubJoinUsers() {
		return subJoinUsers;
	}
	public void setSubJoinUsers(List<SubJoinUsers> subJoinUsers) {
		this.subJoinUsers = subJoinUsers;
	}
	
	
}
