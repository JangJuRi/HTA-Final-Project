package com.sample.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.dto.MoimMainDto;
import com.sample.service.HomeService;
import com.sample.service.MapService;
import com.sample.vo.MoimFavoriteMoim;
import com.sample.vo.MoimUser;

@Controller
@RequestMapping("/map")
public class MapController {
	
	@Autowired
	private MapService mapService;
	
	@Autowired
	private HomeService homeService;

	@GetMapping("show.do")
	public String index() {
		
		return "form/map.tiles";
	}
	
	@GetMapping("all.do")
	@ResponseBody
	public List<MoimMainDto> all() {
		return mapService.getAllMoims();
	}
	
	@GetMapping("category.do")
	@ResponseBody
	public List<MoimMainDto> location(@RequestParam("mainCateNo") long mainCateNo) {
		return mapService.getMoimsByCategory(mainCateNo);
	}
	
	@GetMapping("like.do")
	@ResponseBody
	public boolean increaseLikesMoim(HttpSession httpSession, @RequestParam("moimNo") long moimNo) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		
		return homeService.increaseLikesMoim(moimNo, user.getId());
	}
	
	@GetMapping("isLike.do")
	@ResponseBody
	public boolean isLike(HttpSession httpSession, @RequestParam("moimNo") long moimNo) {
		MoimUser user = (MoimUser) httpSession.getAttribute("LOGIN_USER");
		
		MoimFavoriteMoim moimFavoriteMoim = homeService.getFavorite(moimNo, user.getId());
		if(moimFavoriteMoim == null) {
			return false;
		} else {
			return true;
		}
	}
}
