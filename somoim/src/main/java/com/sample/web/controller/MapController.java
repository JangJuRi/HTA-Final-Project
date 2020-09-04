package com.sample.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.dto.MoimMainDto;
import com.sample.service.MapService;

@Controller
@RequestMapping("/map")
public class MapController {
	
	@Autowired
	private MapService mapService;

	@GetMapping("show.do")
	public String index() {
		
		return "form/map.tiles";
	}
	
	@GetMapping("all.do")
	@ResponseBody
	public List<MoimMainDto> all() {
		return mapService.getAllMoims();
	}
	
	@GetMapping("location.do")
	@ResponseBody
	public List<MoimMainDto> location(@RequestParam("locationNo") long locationNo) {
		return mapService.getMoimsByLocation(locationNo);
	}
}
