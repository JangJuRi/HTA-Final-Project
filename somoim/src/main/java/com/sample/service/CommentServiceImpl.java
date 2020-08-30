package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.CommentDao;
import com.sample.vo.MoimComment;

@Service
@Transactional
public class CommentServiceImpl implements CommentService{

	@Autowired
	CommentDao commentDao;
	
	@Override
	public List<MoimComment> getCommentsByNo(long boardNo) {		
		return commentDao.getCommentsByNo(boardNo);
	}

	@Override
	public void insertComment(MoimComment moimComment) {
		commentDao.insertComment(moimComment);
	}

	@Override
	public List<MoimComment> getReplysByNo(long boardNo) {
		return commentDao.getReplysByNo(boardNo);
	}

	@Override
	public MoimComment getComment(long commentNo) {
		return commentDao.getComment(commentNo);
	}

	@Override
	public void deleteComment(long commentNo) {
		commentDao.deleteComment(commentNo);
	}

	@Override
	public void deleteReply(long commentNo) {
		commentDao.deleteReply(commentNo);
	}

}
