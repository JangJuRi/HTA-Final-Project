package com.sample.service;

import java.util.List;

import com.sample.vo.MoimManagerBoard;
import com.sample.vo.Pagination;

public interface ManagerBoardService {

	// 공지사항 등록
	void addBoard(MoimManagerBoard moimManagerBoard);
	
	// 공지사항 전체조회
	List<MoimManagerBoard> getAllBoards(Pagination pagination);
	
	// 공지사항 세부내용 조회
	MoimManagerBoard getBoardByNo(long boardNo);
	
	// 공지사항 삭제
	void deleteBoard(long boardNo);
	
	// 공지사항 수정
	void modifyBoard(MoimManagerBoard moimManagerBoard);
	
	// 공지사항 총 개수
	int getTotalRowCount();
	
	// 조회수 증가
	void increaseViews(long boardNo);
}
