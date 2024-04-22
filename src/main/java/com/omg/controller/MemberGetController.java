package com.omg.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.omg.domain.MemberVO;
import com.omg.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberGetController { // Member GET Display Controller
	
	@Inject
	private MemberService memberService;
	
	// 회원가입 화면 처리
	@GetMapping(value="/join")
	public void join() throws Exception {}
	
	// 회원가입 2차 화면 처리
	@GetMapping(value="/join-detail")
	public void joinDetail() throws Exception {}
	
	// 회원가입 완료 화면 처리
	@GetMapping(value="/join-complete")
	public void joinCmplt() throws Exception {}
	
	// 로그인 화면 처리
	@GetMapping(value="/login")
	public void loginScreen() throws Exception {}
	
	// 마이 페이지 화면 처리
	@GetMapping(value="/mypage")
	public void mypage(@RequestParam("mbId") String mbId, Model model) throws Exception {
		MemberVO mvo = memberService.getMemberInfo(mbId);
		model.addAttribute("mypage", mvo);
	}
	
	// 정보 수정 페이지 화면 처리
	@GetMapping(value="/modify")
	public void modifyForm(@RequestParam("mbId") String mbId, Model model) throws Exception {
		MemberVO mvo = memberService.getMemberInfo(mbId);
		model.addAttribute("modify", mvo);
	}
	
	// 회원삭제 화면 처리
	@GetMapping(value="/delete")
	public void deleteGet(@RequestParam("mbId") String mbId, Model model) throws Exception {
		MemberVO mvo = memberService.getMemberInfo(mbId);
		model.addAttribute("delete", mvo);
	}

}
