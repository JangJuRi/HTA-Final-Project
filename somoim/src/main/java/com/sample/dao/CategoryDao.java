package com.sample.dao;

import java.util.List;

import com.sample.dto.MoimDates;
import com.sample.dto.MoimFriends;
import com.sample.dto.MoimMainDto;
import com.sample.vo.MoimSubCate;
import com.sample.vo.MoimUser;

public interface CategoryDao {

	// 메인카테고리별 모임 조회
	List<MoimMainDto> selectMoimsByMainCategory(long mainCateNo);
	
	// 서브카테고리별 모임 조회
	List<MoimMainDto> selectMoimsBySubCategory(long subCateNo);
	
	// 지역별 모임 조회
	List<MoimMainDto> selectMoimsByLocation(long locationNo);
	
	// 가입한 모임 조회
	List<MoimMainDto> selectMoimsByJoin(String userId);
	
	// 좋아요한 모임 조회
	List<MoimMainDto> selectMoimsByFavorite(String userId);
	
	// 날짜별 모임 조회
	List<MoimMainDto> selectMoimsByDate(MoimDates moimDates);
	
	// 좋아요순 모임 조회
	List<MoimMainDto> selectMoimsByLikes();

	// 해당 모임에 가입된 친구들 조회
	List<MoimUser> selectFollowsByMoim(MoimFriends friends);

	// 메인카테No로 서브카테 조회
	List<MoimSubCate> getSubCates(long mainCateNo);
}