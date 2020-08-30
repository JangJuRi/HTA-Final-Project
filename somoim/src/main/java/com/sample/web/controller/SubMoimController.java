package com.sample.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.dto.SubJoinUsers;
import com.sample.dto.SubMoimDto;
import com.sample.service.SubMoimService;
import com.sample.vo.MoimSubMoim;
import com.sample.web.form.SubMoimForm;

@Controller
@RequestMapping("/moim")
public class SubMoimController {
	
	@Autowired
	private SubMoimService subMoimService;
	
	// 서브모임 등록
	@PostMapping("/subadd.do")
	public String addSubMoim(@ModelAttribute("subMoimForm") @Valid SubMoimForm subMoimForm, @RequestParam("moimNo") long moimNo) throws Exception {
		
		MoimSubMoim moimSubMoim = new MoimSubMoim();
		
		BeanUtils.copyProperties(subMoimForm, moimSubMoim);
		subMoimService.addNewSubMoim(moimSubMoim);
		

		return "redirect:moim.do?moimNo=" + moimNo;

	}

	// 서브모임 상세정보
	@ResponseBody
	@GetMapping("/submoim.do")
	public SubMoimDto detailSubMoim(@RequestParam("subMoimNo") long subMoimNo) {
		
		MoimSubMoim moim = subMoimService.getSubMoimByNo(subMoimNo);
		List<SubJoinUsers> joinUsers = subMoimService.getAllSubJoinUsers(subMoimNo);
		
		return new SubMoimDto(moim, joinUsers);
	}
	
	// 서브모임 수정
	@PostMapping("/submodify.do")
	public String modifySubMoim(@ModelAttribute("subMoimForm") @Valid SubMoimForm subMoimForm, @RequestParam("subMoimNo") long subMoimNo, @RequestParam("moimNo") long moimNo) throws Exception {
		
		MoimSubMoim moimSubMoim = subMoimService.getSubMoimByNo(subMoimNo);
		
		BeanUtils.copyProperties(subMoimForm, moimSubMoim);
		subMoimService.modifySubMoim(moimSubMoim);
		
		return "redirect:moim.do?moimNo=" + moimNo;
	}
	
	// 서브모임 삭제
	@GetMapping("/subdelete.do")
	public String deleteSubMoim(@RequestParam("subMoimNo") long subMoimNo, @RequestParam("moimNo") long moimNo) {
		
		subMoimService.AllOutSubMoim(subMoimNo);
		subMoimService.deleteSubMoim(subMoimNo);
		
		return "moim.do?moimNo=" + moimNo;
	}
	
	// 서브모임 가입
	@GetMapping("/subjoin.do")
	public String joinSubMoim(@RequestParam("subMoimNo") long subMoimNo, @RequestParam("userId") String userId, @RequestParam("moimNo") long moimNo) {
		subMoimService.joinSubMoim(moimNo, subMoimNo, userId);
		
		return "redirect:moim.do?moimNo=" + moimNo;
	}
	
	// 서브모임 탈퇴
	@GetMapping("/subout.do")
	public String outSubMoim(@RequestParam("subMoimNo") long subMoimNo, @RequestParam("userId") String userId, @RequestParam("moimNo") long moimNo) {
		
		subMoimService.outSubMoim(subMoimNo, userId);
		
		return "redirect:moim.do?moimNo=" + moimNo;
	}
}
