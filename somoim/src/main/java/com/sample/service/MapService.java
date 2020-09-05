package com.sample.service;

import java.util.List;

import com.sample.dto.MoimMainDto;

public interface MapService {

	List<MoimMainDto> getAllMoims();
	List<MoimMainDto> getMoimsByCategory(long mainCateNo);
}
