package com.sample.dao;

import java.util.List;

import com.sample.dto.PageDto;
import com.sample.vo.MoimBoard;

public interface BoardDao {

	void insertMoimBoard(MoimBoard moimBoard);
	void updateMoimBoard(MoimBoard moimBoard);
	List<MoimBoard> selectMoimBoards(PageDto page);
	MoimBoard selectMoimBoard(long moimNo);
	List<MoimBoard> getBoardsByUserId(String userId);
	
	List<MoimBoard>getBoardsByCategory(MoimBoard moimBoard);
	List<MoimBoard>getRecentBoardsByNotice(long moimNo);
	
	int getTotalRowCount(long moimNo);
}
