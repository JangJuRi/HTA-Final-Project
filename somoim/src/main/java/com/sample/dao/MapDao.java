package com.sample.dao;

import java.util.List;

import com.sample.dto.MoimMainDto;

public interface MapDao {

	// 전체 모임 조회
	List<MoimMainDto> selectAllMoims();
	
	// 카테고리별 모임 조회
	List<MoimMainDto> selectMoimsByCategory(long mainCateNo);
}
