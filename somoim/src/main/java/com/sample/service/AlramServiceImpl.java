package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.AlramDao;
import com.sample.vo.MoimAlram;
import com.sample.vo.MoimMessage;

@Service
@Transactional
public class AlramServiceImpl implements AlramService {

	@Autowired
	private AlramDao alramDao;
	
	// 알림 조회하기
	@Override
	public List<MoimAlram> getAlrams(String userId) {
		return alramDao.selectAlrams(userId);
	}
	
	// 알림 등록하기
	@Override
	public void addAlram(MoimAlram moimAlram) {
		alramDao.insertAlram(moimAlram);
	}

	// 알림 읽음표시
	@Override
	public void readAlram(long alramNo) {
		alramDao.deleteAlram(alramNo);
	}
	
	// 보낸 쪽지
	@Override
	public List<MoimMessage> sendMessages(String userId) {
		return alramDao.getAllSendMessages(userId);
	}
	
	// 받은 쪽지
	@Override
	public List<MoimMessage> receiveMessages(String userId) {
		return alramDao.getAllReceiveMessages(userId);
	}

	// 쪽지 보내기
	@Override
	public void addMessage(MoimMessage moimMessage) {
		moimMessage.setUserId(moimMessage.getReceiveUser());
		alramDao.insertMessage(moimMessage);
		moimMessage.setUserId(moimMessage.getSendUser());
		alramDao.insertMessage(moimMessage);
	}

	// 쪽지 삭제하기
	@Override
	public void removeMessage(long messageNo) {
		alramDao.deleteMessage(messageNo);
	}

	// 쪽지 전체 삭제하기
	@Override
	public void removeAllMessage(MoimMessage moimMessage) {
		alramDao.deleteAllMessage(moimMessage);
	}

	// 쪽지 읽음표시
	@Override
	public void readMessage(long messageNo) {
		alramDao.updateMessage(messageNo);
	}
}
