package com.omg.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.omg.domain.CsVO;
import com.omg.service.CsService;

@Controller
@RequestMapping("/cs/*")
public class CsController { // CustomerService Controller
	
	@Inject
	private CsService csService;
	
	// 게시물 리스트 페이지 화면 처리
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void list(Model model) throws Exception {

	}
	
	// 게시물 등록 화면 처리
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public void insert() throws Exception {}
	
	// 게시물 등록 데이터 처리
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insert(CsVO cvo) throws Exception {
		csService.insert(cvo);
		
		return "redirect:/";
	}
	
	// 게시물 view 화면 처리
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public void view(@RequestParam("csPostNum") int csPostNum, Model model) throws Exception {
//		CsVO cvo = csService.getView(csPostNum);		
	}
	
}