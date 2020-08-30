package com.sample.service;

import java.util.List;

import com.sample.dto.ManagerDto;
import com.sample.vo.MoimWarning;

public interface WarningService {

	List<MoimWarning> allWarnings();
	void addWarning(MoimWarning warning);
	void deleteWarning(long warningNo);
	List<MoimWarning> getWarningsByUserId(String userId);
	List<ManagerDto> getWarningsForManager();
	void changeStatus(String userId, String status);
}
