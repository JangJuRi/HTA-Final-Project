package com.sample.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.service.AlramService;
import com.sample.vo.MoimAlram;
import com.sample.vo.MoimMessage;
import com.sample.vo.MoimUser;

@Controller
@RequestMapping("/alram")
public class AlramController {

	@Autowired
	private AlramService alramService;
	
	/* 알람 관련 */
	
	// 관리자 -> 사용자 경고 추가
	@GetMapping("warning.do")
	public String warning(Model model, HttpSession httpSession, @RequestParam("userId") String userId) {
		
		MoimAlram moimAlram = new MoimAlram();
		moimAlram.setMessage("경고메시지 뭐라쓰지");
		moimAlram.setType("경고");
		moimAlram.setUserId(userId);
		
		alramService.addAlram(moimAlram);
		
		return "redirect:/test.do";
	}
	
	// 알림 클릭 -> 삭제 후 다음 알림 뿌리기
	@GetMapping("read.do")
	@ResponseBody
	public List<MoimAlram> show(@RequestParam("alramNo") long alramNo, @RequestParam("userId") String userId) {
		alramService.readAlram(alramNo);
		return alramService.getAlrams(userId);
	}
	
	
	
	/* 쪽지 관련 */
	
	// 쪽지함 조회하기
	@GetMapping("/message.do")
	@ResponseBody
	public Map<String, Object> messageUser(HttpSession session) {
		MoimUser user = (MoimUser) session.getAttribute("LOGIN_USER");
		
		Map<String, Object> messages = new HashMap<String, Object>();
		
		List<MoimMessage> sendMessages = alramService.sendMessages(user.getId());
		// 보낸 쪽지함
		/*model.addAttribute("sendMessages", sendMessages);*/
		messages.put("sendMessages", sendMessages);
		List<MoimMessage> receiveMessages = alramService.receiveMessages(user.getId());
		// 받은 쪽지함
		/*model.addAttribute("receiveMessages", receiveMessages);*/
		messages.put("receiveMessages", receiveMessages);
		
		
		return messages;
	}
	
	// 쪽지 삭제하기
	@GetMapping("/delete.do")
	@ResponseBody
	public void delete(@RequestParam("messageNo") long messageNo) {
		alramService.removeMessage(messageNo);
	}
	
	// 쪽지 전체 삭제하기
	@GetMapping("deleteall.do")
	@ResponseBody
	public void deleteAll(@RequestParam("type") String type, HttpSession session) {
		MoimUser user = (MoimUser) session.getAttribute("LOGIN_USER");
		MoimMessage moimMessage = new MoimMessage();
		moimMessage.setUserId(user.getId());
		
		if(type.equals("send")) {
			moimMessage.setSendUser(user.getId());
		}
		else if(type.equals("receive")) {
			moimMessage.setReceiveUser(user.getId());
		}
		
		alramService.removeAllMessage(moimMessage);
	}
	
	// 쪽지 읽음표시하기
	@GetMapping("msgread.do")
	@ResponseBody
	public void messageRead(@RequestParam("messageNo") long messageNo) {
		alramService.readMessage(messageNo);
	}
}
