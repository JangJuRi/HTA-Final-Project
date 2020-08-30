package com.sample.dao;

import java.util.List;

import com.sample.vo.MoimManagerBoard;
import com.sample.vo.Pagination;

public interface ManagerBoardDao {

	// 공지사항 등록
	void insertBoard(MoimManagerBoard moimManagerBoard);
	
	// 공지사항 전체조회
	List<MoimManagerBoard> selectAllBoards(Pagination pagination);
	
	// 공지사항 세부내용 조회
	MoimManagerBoard selectBoardByNo(long boardNo);
	
	// 공지사항 삭제
	void deleteBoard(long boardNo);
	
	// 공지사항 수정
	void updateBoard(MoimManagerBoard moimManagerBoard);
	
	// 공지사항 총 개수
	int getTotalRowCount();
	
	// 조회수 증가
	void increaseViews(long boardNo);
}
