package com.sample.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.dao.AlramDao;
import com.sample.dao.WarningDao;
import com.sample.dto.MoimFollowDto;
import com.sample.dto.MoimJoinUserMoimDto;
import com.sample.service.AlramService;
import com.sample.service.MoimService;
import com.sample.service.MypageService;
import com.sample.service.UserService;
import com.sample.service.WarningService;
import com.sample.vo.MoimAlram;
import com.sample.vo.MoimBoard;
import com.sample.vo.MoimFollow;
import com.sample.vo.MoimMessage;
import com.sample.vo.MoimPhoto;
import com.sample.vo.MoimUser;
import com.sample.vo.MoimWarning;

@Controller
@RequestMapping("/other")
public class OtherpageController {

	@Autowired
	MypageService mypageService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	MoimService moimService;
	
	@Autowired
	WarningService warningService;
	
	@Autowired
	AlramService alramService;
	
	private MoimUser loginedUser = new MoimUser();
	private MoimFollow moimFollow = new MoimFollow();
	private int followYn;
	private MoimUser ohterUser;
	
	
	@GetMapping("/info.do")
	public String friendPage(@RequestParam("userId") String foluserId, Model model, HttpSession session) {
		this.loginedUser = (MoimUser)session.getAttribute("LOGIN_USER");
		this.ohterUser = userService.getUserDetail(foluserId);
		
		List<MoimFollowDto> followers = mypageService.allFollower(foluserId);
		List<MoimFollowDto> followings = mypageService.allFollowing(foluserId);
		
		MoimFollow moim = new MoimFollow();
		moim.setFolUserId(foluserId);
		moim.setUserId(loginedUser.getId());
		this.moimFollow = moim;
		this.followYn = mypageService.followYn(moimFollow);
		
		model.addAttribute("followerYN", this.followYn);
		model.addAttribute("otherUser", ohterUser);
		model.addAttribute("followerCnt", followers.size());
		model.addAttribute("followingCnt", followings.size());
		
		return "other/info.tiles";
	}
		// 가입한모임
		@GetMapping("/usermoim.do")
		public String joinMoims (Model model){
			
			// 팔로우 상태일떄
			if(this.followYn == 1) {
				model.addAttribute("joinmoim", mypageService.allJoinMoims(moimFollow.getFolUserId()));
				model.addAttribute("otherUser", this.ohterUser);
				model.addAttribute("followerYN", this.followYn);
			}
			// 팔로우 상태가 아닐때
			if(this.followYn == 0) {
				model.addAttribute("followerYN", this.followYn);
				model.addAttribute("otherUser", this.ohterUser);
			}
			return "other/joinMoim.tiles";
		}
		
		// 작성글
		@GetMapping("/board.do")
		public String userBoards (Model model){
			// 팔로우 상태일떄
			if(this.followYn == 1) {
				model.addAttribute("boards", mypageService.boardsByUser(moimFollow.getFolUserId()));
				model.addAttribute("otherUser", this.ohterUser);
				model.addAttribute("followerYN", this.followYn);
			}
			// 팔로우 상태가 아닐때
			if(this.followYn == 0) {
				model.addAttribute("followerYN", this.followYn);
				model.addAttribute("otherUser", this.ohterUser);
			}
			return "other/board.tiles";
		}
		
		// 올린사진
		@GetMapping("/photo.do")
		public String userPhotos (Model model) {
			// 팔로우 상태일떄
			if(this.followYn == 1) {
				model.addAttribute("photos", mypageService.photosByUser(moimFollow.getFolUserId()));
				model.addAttribute("otherUser", this.ohterUser);
				model.addAttribute("followerYN", this.followYn);
			}
			// 팔로우 상태가 아닐때
			if(this.followYn == 0) {
				model.addAttribute("followerYN", this.followYn);
				model.addAttribute("otherUser", this.ohterUser);
			}
			return "other/photo.tiles";
		}
		
		// 쪽지보내기
		@PostMapping("/sendmessage.do")
		@ResponseBody
		public boolean sendMessage(@RequestParam("content") String content,
				@RequestParam("title") String title) {
			MoimMessage message = new MoimMessage(title, content, moimFollow.getUserId(), moimFollow.getFolUserId());
			MoimAlram alram = new MoimAlram(moimFollow.getUserId() + "님이 메세지를 보냈습니다.", "메세지", moimFollow.getFolUserId(), moimFollow.getUserId());
			try {
				alramService.addMessage(message);
				alramService.addAlram(alram);
				return true;
			} catch (Exception e) {
				return false;
			}
		}
		
		// 팔로우하기
		@GetMapping("/addfollow.do")
		public String addFollow() {
			// 팔로우 추가하기
			mypageService.addFollower(moimFollow);
			// 알람 인서트
			MoimAlram alram = new MoimAlram(moimFollow.getUserId() + "님이 팔로우 했습니다.", "팔로우",
					moimFollow.getFolUserId(), moimFollow.getUserId());
			alramService.addAlram(alram);
			
			return "redirect:info.do?userId="+ moimFollow.getFolUserId();
		}
		
		// 팔로우취소하기
		@GetMapping("/deletefollow.do")
		public String deleteFollow() {
			
			// 팔로우테이블 삭제
			mypageService.deleteFollower(moimFollow);
			
			return "redirect:info.do?userId="+ moimFollow.getFolUserId();
		}
		
		// 신고하기
		@PostMapping("/warning.do")
		@ResponseBody
		public boolean warningUser(@RequestParam("text") String text) {
			try {
				MoimWarning warningUser = new MoimWarning();
				warningUser.setContent(text);
				warningUser.setType("유저");
				warningUser.setLoginUserId(moimFollow.getUserId());
				warningUser.setUserId(moimFollow.getFolUserId());
				
				warningService.addWarning(warningUser);
				return true;
			} catch (Exception e) {
				return false;
			}
		}
		
}
