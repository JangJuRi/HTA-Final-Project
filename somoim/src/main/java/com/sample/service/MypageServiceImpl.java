package com.sample.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.AlramDao;
import com.sample.dao.BoardDao;
import com.sample.dao.FollowerDao;
import com.sample.dao.PhotoDao;
import com.sample.dto.MoimFollowDto;
import com.sample.dto.MoimJoinUserMoimDto;
import com.sample.dto.MoimMainDto;
import com.sample.dto.PhotoWIthLikeDto;
import com.sample.vo.MoimAlram;
import com.sample.vo.MoimBoard;
import com.sample.vo.MoimFollow;
import com.sample.vo.MoimPhoto;

@Service
@Transactional
public class MypageServiceImpl implements MypageService {

	
	@Autowired
	FollowerDao followerDao;
	
	@Autowired
	BoardDao boardDao;
	
	@Autowired
	PhotoDao photoDao;
	
	@Autowired
	AlramDao alramDao;
	
	@Override
	public void addFollower(MoimFollow moimFollow) {
		followerDao.insertFollower(moimFollow);
		
	}
	
	@Override
	public List<MoimFollowDto> allFollower(String userId) {
		return followerDao.getFollowersByUserId(userId);
	}
	@Override
	public List<MoimFollowDto> allFollowing(String userId) {
		return followerDao.getFollowingsByUserId(userId);
	}
	@Override
	public List<MoimJoinUserMoimDto> allJoinMoims(String userId) {
		return followerDao.getUserMoims(userId);
	}
	@Override
	public List<MoimBoard> boardsByUser(String userId) {
		return boardDao.getBoardsByUserId(userId);
	}
	
	@Override
	public List<PhotoWIthLikeDto> photosByUser(String userId) {
		List<PhotoWIthLikeDto> photos = photoDao.getPhotosByUserId(userId);
		HashMap<String, String> checkLikeMap = new HashMap<>();
		checkLikeMap.put("userId", userId);
		for (PhotoWIthLikeDto photo : photos) {
			checkLikeMap.put("photoNo", String.valueOf(photo.getPhotoNo()));
			int check = photoDao.getCheckLikeYN(checkLikeMap);
			photo.setClickYN(check);
		}
		
		return photos;
	}
	
	@Override
	public int followYn(MoimFollow moimFollow) {
		return followerDao.findFollower(moimFollow);
	}
	@Override
	public void deleteFollower(MoimFollow follow) {
		followerDao.deleteFollower(follow);
		
	}

	@Override
	public List<MoimMainDto> getFavoliteMoims(String userId) {
		return followerDao.selectFavoliteMoims(userId);
	}
}
