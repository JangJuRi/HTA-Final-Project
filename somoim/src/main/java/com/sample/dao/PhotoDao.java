package com.sample.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.dto.PhotoWIthLikeDto;
import com.sample.vo.MoimPhoto;
import com.sample.vo.MoimPhotoLikes;

public interface PhotoDao {

	void insertPhoto(MoimPhoto moimPhoto);
	
	List<PhotoWIthLikeDto> selectPhotos(long moimNo);
	List<PhotoWIthLikeDto> selectPhotosWithRange(Map<String, Object> map);
	
	MoimPhoto selectPhoto(long photoNo);
	void updatePhoto(MoimPhoto moimPhoto);
	List<PhotoWIthLikeDto> getPhotosByUserId(String userId);
	int getCheckLikeYN(HashMap<String, String> value);
	
	List<MoimPhotoLikes> getPhotoLikesByUserId(MoimPhotoLikes moimPhotoLikes);
	void insertLike(MoimPhotoLikes moimPhotoLikes);
	void deleteLike(MoimPhotoLikes moimPhotoLikes);
}
