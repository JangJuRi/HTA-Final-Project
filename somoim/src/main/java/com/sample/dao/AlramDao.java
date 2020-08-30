package com.sample.dao;

import java.util.List;

import com.sample.vo.MoimAlram;
import com.sample.vo.MoimMessage;

public interface AlramDao {

	List<MoimAlram> selectAlrams(String userId);
	
	void insertAlram(MoimAlram alram);
		
	void deleteAlram(long alramNo);
	
	// 보낸쪽지함
	List<MoimMessage> getAllSendMessages(String userId);
	// 받은쪽지함
	List<MoimMessage> getAllReceiveMessages(String userId);
	
	// 쪽지 보내기
	void insertMessage(MoimMessage moimMessage);
	
	// 쪽지 삭제하기
	void deleteMessage(long messageNo);
	
	// 쪽지 전체 삭제하기
	void deleteAllMessage(MoimMessage moimMessage);
	
	// 쪽지 수정하기 (readYn)
	void updateMessage(long messageNo);
}
