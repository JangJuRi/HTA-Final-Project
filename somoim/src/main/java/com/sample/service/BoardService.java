package com.sample.service;

import java.util.List;

import com.sample.vo.MoimBoard;
import com.sample.vo.Pagination;

public interface BoardService {

	// 게시글 작성
	void addNewBoard(MoimBoard moimBoard);
	// 모임 내의 모든 게시글 조회
	List<MoimBoard> getAllBoards(long moimNo, Pagination page);
	// 게시글 상세조회
	MoimBoard getBoardByNo(long boardNo);
	// 게시글 수정
	void modifyBoard(MoimBoard moimBoard);
	// 게시글 삭제
	void deleteBoard(long boardNo);
	// 조회수 증가
	void increaseBoardLikes(long boardNo);
	// 카테고리별 조회
	List<MoimBoard>getBoardsByCategory(MoimBoard moimBoard);
	// 최근 3개의 공지를 가져온다
	List<MoimBoard>getRecentBoardsByNotice(long moimNo);
	// 게시글 갯수를 가져온다
	int getTotalRowCount(long moimNo);
}
