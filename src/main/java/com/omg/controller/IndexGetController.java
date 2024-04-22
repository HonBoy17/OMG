package com.omg.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexGetController { // Index Display Controller
	
	// 인덱스 페이지 화면 처리
	@GetMapping(value = "/")
	public String home() throws Exception { return "index"; }
	
	// 로그아웃 처리
	@GetMapping(value="/logout")
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원 가입 인트로 페이지 화면 처리
	@GetMapping(value = "/join-intro")
	public void joinIntro() throws Exception {}
	
	// 로그인 인트로 페이지 화면 처리
	@GetMapping(value = "/login-intro")
	public void loginIntro() throws Exception {}

}