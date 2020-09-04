package com.sample.dao;

import java.util.List;

import com.sample.dto.MoimMainDto;

public interface MapDao {

	// 전체 모임 조회
	List<MoimMainDto> selectAllMoims();
	
	// 지역별 모임 조회
	List<MoimMainDto> selectMoimsByLocation(long locationNo);
}
