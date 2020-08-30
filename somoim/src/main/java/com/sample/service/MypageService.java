package com.sample.service;

import java.util.List;

import com.sample.dto.MoimFollowDto;
import com.sample.dto.MoimJoinUserMoimDto;
import com.sample.dto.MoimMainDto;
import com.sample.dto.PhotoWIthLikeDto;
import com.sample.vo.MoimAlram;
import com.sample.vo.MoimBoard;
import com.sample.vo.MoimFollow;
import com.sample.vo.MoimPhoto;

public interface MypageService {

	
	List<MoimFollowDto> allFollower(String userId);
	List<MoimFollowDto> allFollowing(String userId);
	
	List<MoimJoinUserMoimDto> allJoinMoims(String userId);
	
	List<MoimBoard> boardsByUser(String userId);
	
	List<PhotoWIthLikeDto> photosByUser(String userId);
	
	List<MoimMainDto> getFavoliteMoims(String userId);
	
	int followYn(MoimFollow moimFollow);
	
	void addFollower(MoimFollow moimFollow);
	
	void deleteFollower(MoimFollow follow);
}
