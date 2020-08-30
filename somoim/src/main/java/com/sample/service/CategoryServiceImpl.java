package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.CategoryDao;
import com.sample.dto.MoimDates;
import com.sample.dto.MoimFriends;
import com.sample.dto.MoimMainDto;
import com.sample.vo.MoimSubCate;
import com.sample.vo.MoimUser;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

	@Autowired CategoryDao categoryDao;
	
	// 해당 모임에 가입된 친구들 조회
	@Override
	public List<MoimUser> getFollowsByMoim(MoimFriends moimFriends) {
		return categoryDao.selectFollowsByMoim(moimFriends);
	}
	
	// 메인카테고리별 모임 조회
	@Override
	public List<MoimMainDto> getMoimsByMainCategory(long mainCateNo) {
		return categoryDao.selectMoimsByMainCategory(mainCateNo);
	}

	// 서브카테고리별 모임 조회
	@Override
	public List<MoimMainDto> getMoimsBySubCategory(long subCateNo) {
		return categoryDao.selectMoimsBySubCategory(subCateNo);
	}

	// 지역별 모임 조회
	@Override
	public List<MoimMainDto> getMoimsByLocation(long locationNo) {
		return categoryDao.selectMoimsByLocation(locationNo);
	}
	
	// 가입한 모임 조회
	@Override
	public List<MoimMainDto> getMoimsByJoin(String userId) {
		return categoryDao.selectMoimsByJoin(userId);
	}

	// 좋아요한 모임 조회
	@Override
	public List<MoimMainDto> getMoimsByFavorite(String userId) {
		return categoryDao.selectMoimsByFavorite(userId);
	}
	
	// 날짜별 모임 조회
	@Override
	public List<MoimMainDto> getMoimsByDate(MoimDates moimDates) {
		return categoryDao.selectMoimsByDate(moimDates);
	}

	// 좋아요순 모임 조회
	@Override
	public List<MoimMainDto> getMoimsByLikes() {
		return categoryDao.selectMoimsByLikes();
	}

	// 메인카테No로 서브카테 조회
	@Override
	public List<MoimSubCate> getSubCates(long mainCateNo) {
		return categoryDao.getSubCates(mainCateNo);
	}
}
