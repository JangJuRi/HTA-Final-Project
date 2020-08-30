package com.sample.service;

import java.util.List;

import com.sample.dto.MoimDates;
import com.sample.dto.MoimFriends;
import com.sample.dto.MoimMainDto;
import com.sample.vo.MoimSubCate;
import com.sample.vo.MoimUser;

public interface CategoryService {

	// 해당 모임에 가입된 친구들 조회
	List<MoimUser> getFollowsByMoim(MoimFriends moimFriends);
	
	// 메인카테고리별 모임 조회
	List<MoimMainDto> getMoimsByMainCategory(long mainCateNo);
	
	// 서브카테고리별 모임 조회
	List<MoimMainDto> getMoimsBySubCategory(long subCateNo);
	
	// 지역별 모임 조회
	List<MoimMainDto> getMoimsByLocation(long locationNo);
	
	// 가입한 모임 조회
	List<MoimMainDto> getMoimsByJoin(String userId);
	
	// 좋아요한 모임 조회
	List<MoimMainDto> getMoimsByFavorite(String userId);
	
	// 날짜별 모임 조회
	List<MoimMainDto> getMoimsByDate(MoimDates moimDates);
	
	// 좋아요순 모임 조회
	List<MoimMainDto> getMoimsByLikes();
	
	// 메인카테No로 서브카테 조회
	List<MoimSubCate> getSubCates(long mainCateNo);
}
