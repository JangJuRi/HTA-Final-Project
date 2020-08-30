package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.ManagerBoardDao;
import com.sample.vo.MoimManagerBoard;
import com.sample.vo.Pagination;

@Service
@Transactional
public class ManagerBoardServiceImpl implements ManagerBoardService {

	@Autowired
	private ManagerBoardDao managerBoardDao;
	
	@Override
	public void addBoard(MoimManagerBoard moimManagerBoard) {
		managerBoardDao.insertBoard(moimManagerBoard);
	}

	@Override
	public List<MoimManagerBoard> getAllBoards(Pagination pagination) {
		
		return managerBoardDao.selectAllBoards(pagination);
	}

	@Override
	public MoimManagerBoard getBoardByNo(long boardNo) {
		return managerBoardDao.selectBoardByNo(boardNo);
	}

	@Override
	public void deleteBoard(long boardNo) {
		managerBoardDao.deleteBoard(boardNo);
	}

	@Override
	public void modifyBoard(MoimManagerBoard moimManagerBoard) {
		managerBoardDao.updateBoard(moimManagerBoard);
	}

	@Override
	public int getTotalRowCount() {
		return managerBoardDao.getTotalRowCount();
	}

	@Override
	public void increaseViews(long boardNo) {
		managerBoardDao.increaseViews(boardNo);
	}

}
