package com.sample.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.FollowerDao;
import com.sample.dao.UserDao;
import com.sample.vo.MoimUser;
import com.sample.vo.MoimUserCate;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Override
	public MoimUser getUserDetail(String userId) {
		return userDao.getUserById(userId);
	}
	
	@Override
	public MoimUser login(String userId, String userPwd) {
		MoimUser user = userDao.getUserById(userId);
		if (user == null) {
			return null;
		}
		if(!user.getPassword().equals(userPwd)) {
			return null;
		}
		return user;
	}
	
	@Override
	public void signUpUser(MoimUser user, MoimUserCate userCate) {
		userDao.insertUser(user);
		userDao.insertUserCate(userCate);
			
	}
	
	@Override
	public void modifyUser(MoimUser user) {
		userDao.updateUser(user);
		
	}
	
	@Override
	public void deleteUser(String userId) {
		userDao.deleteUser(userId);
		
	}
	
}
