package com.sample.web.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sample.dto.MoimMainDto;

import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.dto.DetailViewMoimsDto;
import com.sample.dto.MoimFriends;
import com.sample.service.AlramService;
import com.sample.service.CategoryService;
import com.sample.service.HomeService;
import com.sample.service.MoimService;
import com.sample.vo.MoimFavoriteMoim;
import com.sample.vo.MoimJoinUser;
import com.sample.vo.MoimManagerBoard;
import com.sample.vo.MoimUser;

@Controller
public class HomeController {

	@Autowired
	HomeService homeService;
	@Autowired
	MoimService moimService;
	@Autowired
	private AlramService alramService;
	@Autowired
	private CategoryService categoryServive;
	
	@GetMapping("/home.do")
	public String getAllMoims(Model model, HttpSession httpSession) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");

		// 모든 카테고리 랜덤 모임 표시
		//httpSession.setAttribute("allMoims", homeService.getAllMoims());
		
		// 지역별 선호 모임 랜덤 표시
		//model.addAttribute("locationMoims", homeService.getlocationMoims(user.getLocationNo()));
		
		// 좋아요순으로 모임 랜덤 표시
		model.addAttribute("favoliteMoims", homeService.getFavoliteMoims());
		
		// 메안카테고리 랜덤표시
		//model.addAttribute("mainCategoryMoims", homeService.getMainCategoryMoims());
		
		// 가입한 모임 표시
		//model.addAttribute("joinedMoim", homeService.getjoinedMoim(user.getId()));
		httpSession.setAttribute("joinedMoim", homeService.getjoinedMoim(user.getId()));
		
		// 내 친구 보기
		//model.addAttribute("followUsers", homeService.getfollowUsers(user.getId()));
		httpSession.setAttribute("followUsers", homeService.getfollowUsers(user.getId()));
		
		// 좋아요한 모임 표시
		httpSession.setAttribute("selectMoim", homeService.getselectMoim(user.getId()));
		
		// 알람서비스
		httpSession.setAttribute("alrams", alramService.getAlrams(user.getId()));

		// 공지사항 10개 뽑기
		httpSession.setAttribute("boardLists", homeService.getmoimManagerBoardList());
		return "main/main.tiles";
	}
	
	// 키워드 검색 기능(타이틀, 내용, 지역, 메인카테고리 이름, 서브카테고리 이름)
	@PostMapping("/test.do")
	public String searchFunction(@RequestParam("keyword") String keyword,
			Model model, HttpSession httpSession){
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		
		List<MoimMainDto> searchDto = homeService.getsearchFunction(keyword);
		
		for(MoimMainDto moims : searchDto) {
			List<MoimUser> users = categoryServive.getFollowsByMoim(new MoimFriends(moims.getMoimNo(), user.getId()));
			moims.setFriends(users);
		}
		
		model.addAttribute("cateMoims", searchDto);
		model.addAttribute("title", "search");

		return "form/test.tiles";
	}
	
	// 셀렉트 박스 및 키워드 이용해서 검색
	@PostMapping("/test2.do")
	public String selectSearchFunction
			(@RequestParam(value="locationNo", required=false) long locationNo,
			@RequestParam(value="mainCateNo", required=false) long mainCateNo,	
			@RequestParam(value="subCateNo", required=false) long subCateNo,
			@RequestParam("keyword") String keyword,
			Model model, HttpSession httpSession) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		
		Map<String, Object> select = new HashMap<String, Object>();
		
		select.put("locationNo", locationNo);
		select.put("mainCateNo", mainCateNo);
		select.put("subCateNo", subCateNo);
		select.put("locationName", homeService.getLocationName(locationNo));
		select.put("mainCateName", homeService.getMainCategoryName(mainCateNo));
		select.put("subCateName", homeService.getSubCategoryName(subCateNo));
		select.put("keyword", keyword);
		
		List<MoimMainDto> searchAll = homeService.getselectSearchFunction(select);
		
		for(MoimMainDto moims : searchAll) {
			List<MoimUser> users = categoryServive.getFollowsByMoim(new MoimFriends(moims.getMoimNo(), user.getId()));
			moims.setFriends(users);
		}
		
		model.addAttribute("cateMoims", searchAll);
		model.addAttribute("title", "search");
		model.addAttribute("keyword", select);
		
		return "form/test.tiles";
	}

	@GetMapping("/like.do")
	@ResponseBody
	public void increaseLikesMoim(HttpSession httpSession, @RequestParam("moimNo") long moimNo) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		homeService.increaseLikesMoim(moimNo, user.getId());
	}
	
	@GetMapping("/detail.do")
	@ResponseBody
	public DetailViewMoimsDto getDetailViewMoims(HttpSession httpSession, @RequestParam("moimNo") long moimNo) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		
		// 모임 디테일 가져오기
		DetailViewMoimsDto detailViewMoimsDto = homeService.detailViewMoims(moimNo, user.getId());
		
		// 좋아요 기능
		MoimFavoriteMoim moimFavoriteMoim = homeService.getFavorite(moimNo, user.getId());
		if(moimFavoriteMoim == null) {
			detailViewMoimsDto.setLikesYn("N");
		}else {
			detailViewMoimsDto.setLikesYn("Y");
		}
		return detailViewMoimsDto;
	}
	
	// 홈 지역모임 더보기용
	@GetMapping("/location.do")
	@ResponseBody
	public Map<String, Object> location(@RequestParam("currentPageNo") long beginIndex,
									  @RequestParam(value="locationNo", required=false, defaultValue="0") long locationNo, HttpSession httpSession) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		long savedLocationNo = locationNo;
		
		// 더보기를 누른다면
		if(locationNo != 0) {
			locationNo = savedLocationNo;
		} // 선호지역이 없고 더보기를 처음 누르는거라면
		else if(user.getLocationNo() == 0) {
			locationNo = (long)(Math.random()*25 +1);
		}
		
		// 선호지역이 있고 더보기를 처음 누르는거라면
		if(locationNo == 0) {
			locationNo = user.getLocationNo();
		}
		
		map.put("moims", homeService.getlocationMoims(beginIndex, beginIndex+3, locationNo));
		map.put("total", homeService.getAllLocationCount(locationNo));

		return map;
	}
	
	// 홈 메인카테 더보기용
	@GetMapping("/mainCate.do")
	@ResponseBody
	public Map<String, Object> subCate(@RequestParam("mainCatePageNo") long beginIndex,
									@RequestParam(value="mainCateNo", required=false, defaultValue="0") long mainCateNo, HttpSession httpSession) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		long savedMainCateNo = mainCateNo;
		
		if(mainCateNo == 0) {
			mainCateNo = (long)(Math.random()*5 +1);
		} else {
			mainCateNo = savedMainCateNo;
		}
		
		map.put("moims", homeService.getMainCategoryMoims(beginIndex, beginIndex+3, mainCateNo));
		map.put("total", homeService.getAllMainCateCount(mainCateNo));
		
		return map;
	}
	
	// 홈 전체모임 더보기용
	@GetMapping("/all.do")
	@ResponseBody
	public Map<String, Object> all(@RequestParam("allPageNo") long beginIndex) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(beginIndex == 8) {
			map.put("moims", homeService.getAllMoims(0, beginIndex));
		} else {
			map.put("moims", homeService.getAllMoims(beginIndex - 4, beginIndex));
		}
		
		map.put("total", homeService.getAllMoimsCount());
		
		return map;
	}
}
