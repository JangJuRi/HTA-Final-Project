package com.sample.service;

import java.util.List;
import java.util.Map;

import com.sample.dto.PhotoWIthLikeDto;
import com.sample.vo.MoimPhoto;
import com.sample.vo.MoimPhotoLikes;

public interface PhotoService {

	void addNewPhoto(MoimPhoto moimPhoto);
	
	List<PhotoWIthLikeDto> getPhotosByMoimNo(long moimNo, String userId);
	List<PhotoWIthLikeDto> getPhotosWithRange(Map<String, Object> map, String userId);
	
	void addLike(MoimPhotoLikes photoLikes);
	void delLike(MoimPhotoLikes photoLikes);
}
