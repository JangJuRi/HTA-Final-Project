package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.MapDao;
import com.sample.dto.MoimMainDto;

@Service
@Transactional
public class MapServiceImpl implements MapService {

	@Autowired
	private MapDao mapDao;

	@Override
	public List<MoimMainDto> getAllMoims() {
		return mapDao.selectAllMoims();
	}

	@Override
	public List<MoimMainDto> getMoimsByCategory(long mainCateNo) {
		return mapDao.selectMoimsByCategory(mainCateNo);
	}
	
	
}
