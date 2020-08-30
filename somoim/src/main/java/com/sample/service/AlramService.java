package com.sample.service;

import java.util.List;

import com.sample.vo.MoimAlram;
import com.sample.vo.MoimMessage;

public interface AlramService {

	// 알림 띄우기
	List<MoimAlram> getAlrams(String userId);
	
	// 알림 등록하기
	void addAlram(MoimAlram moimAlram);
	
	// 알림 읽음표시
	void readAlram(long alramNo);
	
	// 보낸쪽지
	List<MoimMessage> sendMessages(String userId);
	
	// 받은쪽지
	List<MoimMessage> receiveMessages(String userId);
	
	// 쪽지 보내기
	void addMessage(MoimMessage moimMessage);
	
	// 쪽지 삭제하기
	void removeMessage(long messageNo);
	
	// 쪽지 전체 삭제하기
	void removeAllMessage(MoimMessage moimMessage);
	
	// 쪽지 읽음표시
	void readMessage(long messageNo);
}
