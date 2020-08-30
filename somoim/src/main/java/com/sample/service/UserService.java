package com.sample.service;



import com.sample.vo.MoimUser;
import com.sample.vo.MoimUserCate;

public interface UserService {

	MoimUser getUserDetail(String userId);
	
	MoimUser login(String userId, String userPwd);
	
	void signUpUser(MoimUser user, MoimUserCate userCate);
	
	void modifyUser(MoimUser user);
	
	void deleteUser(String userId);
}
