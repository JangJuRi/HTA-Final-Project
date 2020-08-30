package com.sample.service;

import java.util.List;
import java.util.Map;

import com.sample.dto.DetailViewMoimsDto;
import com.sample.dto.MoimFollowDto;
import com.sample.dto.MoimMainDto;
import com.sample.vo.MoimFavoriteMoim;
import com.sample.vo.MoimManagerBoard;

public interface HomeService {

	// 모든 카테고리 랜덤 모임 표시
	List<MoimMainDto> getAllMoims(long beginIndex, long endIndex);
	
	// 지역별 선호 모임 랜덤 표시
	List<MoimMainDto> getlocationMoims(long beginIndex, long endIndex, long locationNo);
	
	// 좋아요순으로 모임 랜덤 표시
	List<MoimMainDto> getFavoliteMoims();
	
	// 메안카테고리 랜덤표시
	List<MoimMainDto> getMainCategoryMoims(long beginIndex, long endIndex, long mainCateNo);
	
	// 가입한 모임 표시
	List<MoimMainDto> getjoinedMoim(String userId);
	
	// 내 친구 보기
	List<MoimFollowDto> getfollowUsers(String userId);
	
	// 좋아요 기능 구현
	void increaseLikesMoim(long moimNo, String userId);
	
	// 좋아요 유무 확인
	MoimFavoriteMoim getFavorite(long moimNo, String userId);

	// 좋아요 표시한 모임들 보기
	List<MoimMainDto> getselectMoim(String userId);
	
	// 상세정보 보기
	DetailViewMoimsDto detailViewMoims(long moimNo, String userId);
	
	// 검색조건
	List<MoimMainDto> getsearchFunction(String keyword);
	
	// 셀렉트박스 검색
	List<MoimMainDto> getselectSearchFunction(Map<String, Object> select);
	
	
	//무한 스크롤
	List<MoimMainDto> getscrollMoim();
	
	// 지역 이름, 메인카테고리, 서브카테고리 받아오기
	String getLocationName(long locationNo);
	String getMainCategoryName(long mainCateNo);
	String getSubCategoryName(long subCateNo);
	
	// 지역 검색 총 개수
	long getAllLocationCount(long locationNo);
	long getAllMainCateCount(long mainCateNo);
	long getAllMoimsCount();
	
	// 공지사항 10개 뽑기
	List<MoimManagerBoard> getmoimManagerBoardList();
	

}
