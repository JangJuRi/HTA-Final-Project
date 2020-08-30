package com.sample.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.service.AlramService;
import com.sample.service.ManagerBoardService;
import com.sample.service.WarningService;
import com.sample.vo.MoimAlram;
import com.sample.vo.MoimManagerBoard;
import com.sample.vo.MoimUser;
import com.sample.vo.MoimWarning;
import com.sample.vo.Pagination;
import com.sample.web.form.ManagerForm;

@Controller
@RequestMapping("/manager")
public class ManagerController {

	@Autowired
	private WarningService warningService;
	
	@Autowired
	private AlramService alramService;
	
	@Autowired
	private ManagerBoardService managerBoardService;
	
	// 사용자 신고 리스트 뿌리기
	@GetMapping("show.do")
	public String show(Model model) {
		model.addAttribute("userList", warningService.getWarningsForManager());
		
		return "manager/manager.tiles";
	}
	
	// 사용자 신고 상세보기
	@GetMapping("detail.do")
	@ResponseBody
	public List<MoimWarning> detail(Model model, @RequestParam("userId") String userId) {
		return warningService.getWarningsByUserId(userId);
	}
	
	// 사용자 신고 상세 삭제하기
	@GetMapping("delete.do")
	@ResponseBody
	public void delete(@RequestParam("warningNo") long warningNo) {
		warningService.deleteWarning(warningNo);
	}
	
	// 유저한테 경고 보내기
	@GetMapping("warning.do")
	@ResponseBody
	public void warning(HttpSession httpSession, @RequestParam("userId") String userId) {
		MoimAlram moimAlram = new MoimAlram();
		moimAlram.setUserId(userId);
		moimAlram.setType("경고");
		moimAlram.setMessage("경고를 받으셨습니다.");
		
		alramService.addAlram(moimAlram);
	}
	
	// 유저 계정 정지/해제
	@GetMapping("account.do")
	@ResponseBody
	public void account(@RequestParam("userId") String userId, @RequestParam("status") String status) {
		warningService.changeStatus(userId, status);
	}
	
	// 관리자 보드 시작
	// 공지사항 전체조회
	@GetMapping("/boards.do")
	public String managerBoard(@RequestParam("pageNo") String pageNo, Model model) {
		Pagination pagination = new Pagination(8, 5, stringToInt(pageNo, 1), managerBoardService.getTotalRowCount()); 
		
		model.addAttribute("page", pagination);
		model.addAttribute("managerBoards", managerBoardService.getAllBoards(pagination));
		
		return "manager/managerBoard.tiles";
	}
	
	// 공지사항 등록 폼 가기
	@GetMapping("/create.do")
	public String managerBoardCreate() {
		return "manager/managerBoardCreate.tiles";
	}
	
	// 공지사항 등록하기
	@PostMapping("/create.do")
	public String managerBoardCreate(@ModelAttribute("managerBoardForm") @Valid ManagerForm managerForm) {
		MoimManagerBoard moimManagerBoard = new MoimManagerBoard();
		BeanUtils.copyProperties(managerForm, moimManagerBoard);
		managerBoardService.addBoard(moimManagerBoard);
		
		return "redirect:boards.do?pageNo=1";
	}
	
	// 공지사항 상세보기
	@GetMapping("/board.do")
	public String managerBoardDetail(@RequestParam("boardNo") long boardNo, Model model) {
		managerBoardService.increaseViews(boardNo);
		model.addAttribute("managerBoard", managerBoardService.getBoardByNo(boardNo));
		
		return "manager/managerBoardDetail.tiles";
	}
	
	// 공지사항 삭제
	@GetMapping("/deleteboard.do")
	@ResponseBody
	public void deleteBoard(@RequestParam("boardNo") long boardNo) {
		managerBoardService.deleteBoard(boardNo);
	}
	
	// 공지사항 세부 -> 삭제
	@GetMapping("/deleteboard2.do")
	public String deleteBoard2(@RequestParam("boardNo") long boardNo) {
		managerBoardService.deleteBoard(boardNo);
		
		return "redirect:boards.do?pageNo=1";
	}
	
	// 공지사항 수정
	@PostMapping("/modify.do")
	public String modify(@ModelAttribute("managerBoardForm") @Valid ManagerForm managerForm, @RequestParam("boardNo") long boardNo) {
		MoimManagerBoard moimManagerBoard = managerBoardService.getBoardByNo(boardNo);
		BeanUtils.copyProperties(managerForm, moimManagerBoard);
		
		managerBoardService.modifyBoard(moimManagerBoard);
		
		return "redirect:board.do?boardNo=" + boardNo;
	}
	
	
	
	public static int stringToInt(String str, int defaultNumber) {
		try {
			return Integer.parseInt(str);
		} catch (NumberFormatException e){
			return defaultNumber;
		}
	}
}
