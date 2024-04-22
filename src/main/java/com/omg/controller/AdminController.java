package com.omg.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.omg.domain.MemberVO;
import com.omg.service.MemberService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Inject
	private MemberService memberService;
	
	// 관리자 페이지 index
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void adminList() throws Exception {}
	
	// 사용자 이용 현황 화면
	@RequestMapping(value="/member-list", method=RequestMethod.GET)
	public void memberList(Model model) throws Exception {
		// 회원 리스트
		List<MemberVO> memberList = memberService.getMemberList();
		model.addAttribute("mList", memberList);
		
		// 회원 총 숫자 및 성별 분포
		int total = memberService.getMemberCnt();
		int menCnt = memberService.getMenCnt("남성");
		int womenCnt = memberService.getWomenCnt("여성");
		
		model.addAttribute("mtotal", total);
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
	
	// 회원 개인 데이터 페이지 (일반 사용자가 보는 화면과 다르게 구성)
	@RequestMapping(value="/data-page", method=RequestMethod.GET) //RequestMapping 다르게 구성할 것
	public void memberData(Model model) throws Exception {
		
	}
	
}