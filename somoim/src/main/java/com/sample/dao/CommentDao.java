package com.sample.dao;

import java.util.List;

import com.sample.vo.MoimComment;

public interface CommentDao {

	// 코멘트 전체 가져오기
	List<MoimComment> getCommentsByNo(long boardNo);
	
	// 코멘트 등록
	void insertComment(MoimComment moimComment);
	
	// 댓글 가져오기
	List<MoimComment> getReplysByNo(long boardNo);
	
	// 댓글 하나 가져오기
	MoimComment getComment(long commentNo);
	
	// 리플 삭제
	void deleteReply(long commentNo);
	// 댓글 삭제
	void deleteComment(long commentNo);
}
