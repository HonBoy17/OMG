package com.omg.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.omg.domain.MemberVO;
import com.omg.service.MemberService;

@Controller
@RequestMapping("/emp/*")
public class EmpGetController {
	
	@Inject
	private MemberService memberService;
	
	// 직원 회원가입 화면 처리
	@GetMapping(value="/insert")
	public void insert() throws Exception {}
	
	// 관리자 페이지 화면 처리
	@GetMapping(value="/data")
	public void getUserData(Model model) throws Exception {
		List<MemberVO> memberList = memberService.getMemberList();
		model.addAttribute("mList",memberList);
		
		// 일반 회원 총 숫자 및 성별 분포
		int mTotal = memberService.getMemberCnt();
		int menCnt = memberService.getMenCnt("남성");
		int womenCnt = memberService.getWomenCnt("여성");
		model.addAttribute("mTotal", mTotal);
		model.addAttribute("menCnt", menCnt);
		model.addAttribute("womenCnt", womenCnt);
		
		// 회원 나이 분포
		int age30s = memberService.getAge30("30대");
		int age40s = memberService.getAge40("40대");
		int age50s = memberService.getAge50("50대");
		int age60s = memberService.getAge60("60대");
		int age70s = memberService.getAge70("70대");
		int age80s = memberService.getAge80("80대");		
		model.addAttribute("age30s", age30s);
		model.addAttribute("age40s", age40s);
		model.addAttribute("age50s", age50s);
		model.addAttribute("age60s", age60s);
		model.addAttribute("age70s", age70s);
		model.addAttribute("age80s", age80s);
	}
	
}
