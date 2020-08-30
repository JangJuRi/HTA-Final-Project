package com.sample.dao;

import java.util.List;

import com.sample.dto.JoinUsers;
import com.sample.dto.MoimMainDto;
import com.sample.vo.MoimBanner;
import com.sample.vo.MoimJoinUser;

public interface MoimDao {

	void insertMoim(MoimMainDto moimMainDto);
	void insertMoimBanner(long moimNo);
	
	void updateBanner(MoimBanner moimBanner);
	
	List<MoimMainDto> selectMoims();
	MoimMainDto selectMoim(long moimNo);
	String selectBanner(long moimNo);
	void updateMoim(MoimMainDto moimMainDto);
	
	void insertJoinUser(MoimJoinUser moimJoinUser);
	List<JoinUsers> selectJoinUsers(long moimNo);
	MoimJoinUser selectJoinUser(MoimJoinUser moimJoinUser);
	void deleteJoinUser(MoimJoinUser moimJoinUser);
	void deleteJoinUsers(long moimNo);
}
