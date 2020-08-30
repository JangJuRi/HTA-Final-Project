package com.sample.web.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sample.dto.MoimMainDto;
import com.sample.dto.PhotoWIthLikeDto;
import com.sample.service.BoardService;
import com.sample.service.CategoryService;
import com.sample.service.CommentService;
import com.sample.service.MoimService;
import com.sample.service.PhotoService;
import com.sample.service.SubMoimService;
import com.sample.vo.MoimBanner;
import com.sample.vo.MoimBoard;
import com.sample.vo.MoimComment;
import com.sample.vo.MoimPhoto;
import com.sample.vo.MoimPhotoLikes;
import com.sample.vo.MoimSubCate;
import com.sample.vo.MoimSubMoim;
import com.sample.vo.MoimUser;
import com.sample.vo.Pagination;
import com.sample.web.form.BoardForm;
import com.sample.web.form.MoimForm;
import com.sample.web.form.PhotoForm;
import com.sample.web.form.SubMoimForm;

@Controller
@RequestMapping("/moim")
public class MoimController {

	@Autowired
	private MoimService moimService;
	
	@Autowired
	private SubMoimService subMoimService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private PhotoService photoService;
	
	// 새 모임 등록
	@PostMapping("/add.do")
	public String addMoim(@ModelAttribute("moimForm") @Valid MoimForm moimForm) throws Exception {
		
		MoimMainDto moimMainDto = new MoimMainDto();
		BeanUtils.copyProperties(moimForm, moimMainDto);
		
		if("empty".equals(moimMainDto.getImage())) {
			MultipartFile upfile = moimForm.getUpfile();
			String filename = upfile.getOriginalFilename();
			
			File file = new File("C:\\final_project\\workspace\\somoim\\src\\main\\webapp\\resources\\home_images\\"+filename);
			FileOutputStream fos;
			try {
				file.createNewFile();
				fos = new FileOutputStream(file);
				fos.write(upfile.getBytes());
				fos.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			moimMainDto.setImage(filename);
		}
		
		moimService.addNewMoim(moimMainDto);
		
		return "redirect:moim.do?moimNo=" + moimMainDto.getMoimNo();
	}
	
	// 새 모임 등록 페이지
	@GetMapping("/add.do")
	public String createMoim(Model model, HttpSession httpSession) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		model.addAttribute("longinedUser", user.getId());
		
		model.addAttribute("moimForm", new MoimForm());
		
		return "moim/moimCreate.tiles";
	}
	
	// 모임등록 세부 카테고리
	@GetMapping("/subCate.do")
	@ResponseBody
	public List<MoimSubCate> getSubCate(@RequestParam("mainCateNo") long mainCateNo) {
		System.out.println(mainCateNo);
		return categoryService.getSubCates(mainCateNo);
	}
	
	// 모임 정보 수정
	@GetMapping("/modify.do")
	public String modify(Model model, HttpSession httpSession, @RequestParam("moimNo") long moimNo) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		model.addAttribute("moim", moimService.getMoimByNo(moimNo));
		model.addAttribute("loginedUser", user.getId());		
		model.addAttribute("moimForm", new MoimForm());
		model.addAttribute("moimNo", moimNo);
		return "moim/moimModify.tiles";
	}
	
	// 모임 정보 수정
	@PostMapping("/modify.do")
	public String modifyMoim(@ModelAttribute("moimForm") @Valid MoimForm moimForm, @RequestParam("moimNo") long moimNo) throws Exception {
		MoimMainDto moimMainDto = moimService.getMoimByNo(moimNo);
		moimMainDto.setContent(moimForm.getContent());
		moimMainDto.setFee(moimForm.getFee());
		moimMainDto.setHeadCount(moimForm.getHeadCount());
		moimMainDto.setJoinDate(moimForm.getJoinDate());
		moimMainDto.setLocationNo(moimForm.getLocationNo());
		moimMainDto.setSubCateNo(moimForm.getSubCateNo());
		moimMainDto.setTitle(moimForm.getTitle());
		moimService.modifyMoim(moimMainDto);
		
		return "redirect:moim.do?moimNo=" + moimNo;
	}
	
	// 모임 상세정보
	@GetMapping("/moim.do")
	public String detailMoim(@RequestParam("moimNo") long moimNo, Model model, HttpSession httpSession) {
		model.addAttribute("moim", moimService.getMoimByNo(moimNo));
		model.addAttribute("submoims", subMoimService.getAllSubMoims(moimNo));
		model.addAttribute("users", moimService.getAllJoinUsers(moimNo));

		model.addAttribute("subMoimForm", new SubMoimForm());
		
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		model.addAttribute("loginedUser", user.getId());
		
		String role = moimService.getJoinUser(moimNo, user.getId());		
		if("reject".equals(role)) {
			return "redirect:/home.do";
		}		
		model.addAttribute("role", role);
		model.addAttribute("banner", new MoimBanner());
		
		return "moim/moim.tiles";
	}
	
	// 배너 수정
	@PostMapping("/bannerAdd.do")
	public String addBanner(@ModelAttribute("banner")  @Valid MoimBanner banner) {
		MultipartFile upfile = banner.getUpfile();
		String filename = upfile.getOriginalFilename();
		
		if("".equals(filename)) {
			banner.setBanner("banner.jpg");
		} else {
			File file = new File("C:\\final_project\\workspace\\somoim\\src\\main\\webapp\\resources\\moim_images\\"+filename);
			FileOutputStream fos;
			try {
				file.createNewFile();
				fos = new FileOutputStream(file);
				fos.write(upfile.getBytes());
				fos.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			banner.setBanner(filename);
		}
		moimService.updateBanner(banner);
		
		return "redirect:moim.do?moimNo=" + banner.getMoimNo();
	}
	
	// 모임 삭제
	@GetMapping("delete.do")
	public String deleteMoim(@RequestParam("moimNo") long moimNo) {
		
		moimService.deleteMoim(moimNo);
		moimService.AllOutMoim(moimNo);
		
		return "redirect:/home.do";
	}
	
	// 모임 가입
	@GetMapping("join.do")
	public String joinMoim(@RequestParam("moimNo") long moimNo, @RequestParam("userId") String userId, HttpSession httpSession) {
		String Yn = moimService.joinMoim(moimNo, userId);
		
		if("Y".equals(Yn))
			return "redirect:moim.do?moimNo=" + moimNo;
		else 
			return "redirect:/home.do";
			
	}
	
	// 모임 탈퇴
	@GetMapping("out.do")
	public String outMoim(@RequestParam("moimNo") long moimNo, @RequestParam("userId") String userId) {
		
		moimService.outMoim(moimNo, userId);
		
		return "main/main.tiles";
	}
	
	// 모임 게시판
	@GetMapping("board.do")
	public String moimBoard(@RequestParam("moimNo") long moimNo, @RequestParam("pageNo") String pageNo,  Model model) {
		
		Pagination pagination = new Pagination(10, 5, stringToInt(pageNo, 1), boardService.getTotalRowCount(moimNo));
		model.addAttribute("moim", moimService.getMoimByNo(moimNo));
		
		List<MoimBoard> notice = boardService.getRecentBoardsByNotice(moimNo);
		List<MoimBoard> boards = boardService.getAllBoards(moimNo, pagination);
		
		for(MoimBoard board : boards) {
			notice.add(board);
		}
		
		model.addAttribute("boards", notice);	
		model.addAttribute("page", pagination);
		return "moim/moimBoard.tiles";
	}
	
	// 모임 공지
	@GetMapping("notice.do")
	public String boardNotice(@RequestParam("moimNo") long moimNo, @RequestParam("pageNo") String pageNo,  Model model) {
		
		Pagination pagination = new Pagination(10, 5, stringToInt(pageNo, 1), boardService.getTotalRowCount(moimNo));
		
		MoimBoard moimBoard = new MoimBoard();
		moimBoard.setMoimNo(moimNo);
		moimBoard.setBoardCateNo(1);
		boardService.getBoardsByCategory(moimBoard);

		model.addAttribute("moim", moimService.getMoimByNo(moimNo));
		
		
		model.addAttribute("boards", boardService.getBoardsByCategory(moimBoard));	
		model.addAttribute("page", pagination);
		return "moim/moimBoard.tiles";
	}
	
	// 모임 게시판 글 등록 GET
	@GetMapping("boardAdd.do")
	public String boardAdd(@RequestParam("moimNo") long moimNo, Model model, HttpSession httpSession) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		model.addAttribute("loginedUser", user.getId());		
		model.addAttribute("boardForm", new BoardForm());
		
		
		return "moim/boardCreate.tiles";
	}
	
	// 모임 게시판 글 등록 POST
	@PostMapping("boardAdd.do")
	public String boardAdd(@ModelAttribute("boardForm") @Valid BoardForm boardForm) {
		MoimBoard board = new MoimBoard();
		BeanUtils.copyProperties(boardForm, board);
		boardService.addNewBoard(board);
		return "redirect:board.do?moimNo=" + board.getMoimNo() + "&pageNo=1";
	}
	
	// 모임 게시판 디테일
	@GetMapping("boardDetail.do")
	public String boardDetail(@RequestParam("boardNo") long boardNo, Model model, HttpSession httpSession) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		model.addAttribute("loginedUser", user.getId());	
		
		model.addAttribute("board", boardService.getBoardByNo(boardNo));
		model.addAttribute("comments", commentService.getCommentsByNo(boardNo));
		model.addAttribute("replys", commentService.getReplysByNo(boardNo));
		
		model.addAttribute("comment", new MoimComment());		
		
		return "moim/boardDetail.tiles";
	}
	
	// 모임 게시판 댓글
	@PostMapping("comment.do")
	public String boardComment(@ModelAttribute("comment") @Valid MoimComment moimComment, @RequestParam("boardNo") long boardNo) {
		MoimComment comment = new MoimComment(); 
		BeanUtils.copyProperties(moimComment, comment);
		commentService.insertComment(comment);
		
		return "redirect:boardDetail.do?boardNo=" + boardNo;
	}
	
	// 모임 게시판 글 수정 GET
	@GetMapping("boardModify.do")
	public String boardModify(@RequestParam("moimNo") long moimNo, @RequestParam("boardNo") long boardNo, Model model, HttpSession httpSession) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		model.addAttribute("loginedUser", user.getId());		
		model.addAttribute("board", boardService.getBoardByNo(boardNo));
		model.addAttribute("boardForm", new BoardForm());
		
		
		return "moim/boardModify.tiles";
	}
	
	// 모임 게시판 글 수정 POST
	@PostMapping("boardModify.do")
	public String boardModify(@RequestParam("boardNo") long boardNo, @ModelAttribute("boardForm") @Valid BoardForm boardForm) {
		MoimBoard board = boardService.getBoardByNo(boardNo);
		BeanUtils.copyProperties(boardForm, board);
		
		boardService.modifyBoard(board);
		return "redirect:boardDetail.do?boardNo=" + board.getMoimNo();
	}
	
	// 모임 게시판 삭제
	@GetMapping("boardDelete.do")
	public String boardDelete(@RequestParam("boardNo") long boardNo) {
		MoimBoard board = boardService.getBoardByNo(boardNo);
		System.out.println(board.toString());
		boardService.deleteBoard(boardNo);
		return "redirect:board.do?moimNo=" + board.getMoimNo() + "&pageNo=1";
	}
	
	// 모임 게시판 댓글 삭제
	@GetMapping("commentDelete.do")
	@ResponseBody
	public String commentDelete(@RequestParam("commentNo") long commentNo) {
		MoimComment comment = commentService.getComment(commentNo);
		if(comment == null) {
			return "false";
		}
		if(comment.getMainCommentNo() == 0) {
			commentService.deleteReply(commentNo);
			commentService.deleteComment(commentNo);
		} else {
			commentService.deleteComment(commentNo);
		}
		return "true";
	}
	
	// 사진첩
	@GetMapping("photo.do")
	public String photo(@RequestParam("moimNo") long moimNo, Model model, HttpSession httpSession) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		
		model.addAttribute("photos", photoService.getPhotosByMoimNo(moimNo, user.getId()));
		model.addAttribute("photoForm", new PhotoForm());
		
		return "moim/photo.tiles";
	}
	
	// 사진첩 무한스크롤
	@GetMapping("morePhoto.do")
	@ResponseBody
	public List<PhotoWIthLikeDto> morePhoto(@RequestParam("moimNo") long moimNo, 
			@RequestParam("photoRow") int photoRow, Model model, HttpSession httpSession) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		Map<String, Object> map = new HashMap<String, Object>();
		if(photoRow == 8) 
			map.put("beginIndex", 0);
		else 
			map.put("beginIndex", photoRow-4);
		
		map.put("endIndex", photoRow);
		map.put("moimNo", moimNo);
		
		return photoService.getPhotosWithRange(map, user.getId());
	}
	
	// 사진 추가
	@PostMapping("photoAdd.do")
	public String photoAdd(@ModelAttribute("photoForm")  @Valid PhotoForm photoForm) {
		MoimPhoto moimPhoto = new MoimPhoto();
		
		BeanUtils.copyProperties(photoForm, moimPhoto);
		
		MultipartFile upfile = photoForm.getUpfile();
		String filename = upfile.getOriginalFilename();
		System.out.println(filename);
			
		File file = new File("C:\\final_project\\workspace\\somoim\\src\\main\\webapp\\resources\\moim_photo\\"+filename);
		FileOutputStream fos;
		try {
			file.createNewFile();
			fos = new FileOutputStream(file);
			fos.write(upfile.getBytes());
			fos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		moimPhoto.setPhoto(filename);
		
		photoService.addNewPhoto(moimPhoto);
		
		return "redirect:photo.do?moimNo=" + photoForm.getMoimNo();
	}
	
	// 좋아요 추가
	@GetMapping("addLike.do")
	@ResponseBody
	public boolean addLike(@RequestParam("moimNo") long moimNo, @RequestParam("photoNo") long photoNo, @RequestParam("userId") String userId) {
		MoimPhotoLikes photoLikes = new MoimPhotoLikes(userId, photoNo, moimNo);	
		photoService.addLike(photoLikes);
		return true;
	}
	
	// 좋아요 삭제
	@GetMapping("delLike.do")
	@ResponseBody
	public boolean delLike(@RequestParam("moimNo") long moimNo, @RequestParam("photoNo") long photoNo, @RequestParam("userId") String userId) {
		MoimPhotoLikes photoLikes = new MoimPhotoLikes(userId, photoNo, moimNo);		
		photoService.delLike(photoLikes);
		return true;
	}
	
	public static int stringToInt(String str, int defaultNumber) {
		try {
			return Integer.parseInt(str);
		} catch (NumberFormatException e){
			return defaultNumber;
		}
	}
	
}
