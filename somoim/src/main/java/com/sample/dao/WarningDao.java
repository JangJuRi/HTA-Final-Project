package com.sample.dao;

import java.util.HashMap;
import java.util.List;

import com.sample.dto.ManagerDto;
import com.sample.vo.MoimWarning;

public interface WarningDao {

	List<MoimWarning> getAllWarnings();
	void insertWarning(MoimWarning warning);
	void updateWarning(long warningNo);
	List<MoimWarning> selectWarningsByUserId(String userId);
	List<ManagerDto> selectWarningsForManager();
	void updateStatus(HashMap<String, Object> map);
}
