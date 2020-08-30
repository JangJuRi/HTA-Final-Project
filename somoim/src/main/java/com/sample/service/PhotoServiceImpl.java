package com.sample.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.PhotoDao;
import com.sample.dto.PhotoWIthLikeDto;
import com.sample.vo.MoimPhoto;
import com.sample.vo.MoimPhotoLikes;

@Service
@Transactional
public class PhotoServiceImpl implements PhotoService {

	@Autowired
	PhotoDao photoDao;
	
	@Override
	public void addNewPhoto(MoimPhoto moimPhoto) {
		photoDao.insertPhoto(moimPhoto);
	}

	@Override
	public void addLike(MoimPhotoLikes photoLikes) {
		MoimPhoto photo = photoDao.selectPhoto(photoLikes.getPhotoNo());
		photo.setLikes(photo.getLikes() + 1);
		photoDao.updatePhoto(photo);
		
		photoDao.insertLike(photoLikes);
	}

	@Override
	public void delLike(MoimPhotoLikes photoLikes) {
		MoimPhoto photo = photoDao.selectPhoto(photoLikes.getPhotoNo());
		photo.setLikes(photo.getLikes() - 1);
		photoDao.updatePhoto(photo);
		
		photoDao.deleteLike(photoLikes);
	}

	@Override
	public List<PhotoWIthLikeDto> getPhotosByMoimNo(long moimNo, String userId) {
		List<PhotoWIthLikeDto> photos = photoDao.selectPhotos(moimNo);
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
	public List<PhotoWIthLikeDto> getPhotosWithRange(Map<String, Object> map, String userId) {
		List<PhotoWIthLikeDto> photos = photoDao.selectPhotosWithRange(map);
		HashMap<String, String> checkLikeMap = new HashMap<>();
		checkLikeMap.put("userId", userId);
		
		for (PhotoWIthLikeDto photo : photos) {
			checkLikeMap.put("photoNo", String.valueOf(photo.getPhotoNo()));
			int check = photoDao.getCheckLikeYN(checkLikeMap);
			photo.setClickYN(check);
		}
		
		return photos;
	}
	

}
