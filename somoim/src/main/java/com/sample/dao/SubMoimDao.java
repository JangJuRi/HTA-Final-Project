package com.sample.dao;

import java.util.List;

import com.sample.dto.SubJoinUsers;
import com.sample.vo.MoimSubJoinUser;
import com.sample.vo.MoimSubMoim;

public interface SubMoimDao {

	void insertSubMoim(MoimSubMoim moimSubMoim);
	List<MoimSubMoim> selectSubMoims(long moimNo);
	MoimSubMoim selectSubMoim(long subMoimNo);
	void updateSubMoim(MoimSubMoim moimSubMoim);
	void deleteSubMoim(long subMoimNo);
	
	void insertSubJoinUser(MoimSubJoinUser moimSubJoinUser);
	List<SubJoinUsers>selectSubJoinUsers(long subMoimNo);
	MoimSubJoinUser selectSubJoinUser(MoimSubJoinUser moimSubJoinUser);
	void deleteSubJoinUsers(long subMoimNo);
	void deleteSubJoinUser(MoimSubJoinUser moimSubJoinUser);
	
	void deleteSubMoims(MoimSubJoinUser moimSubJoinUser);
	void deleteSubMoimsJoinUser(MoimSubJoinUser moimSubJoinUser);
}
