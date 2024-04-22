package com.omg.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.omg.domain.HelperVO;
import com.omg.service.HelperService;

@Controller
@RequestMapping("/helper/*")
public class HelperGetController { // Helper Get Display Controller
	
	@Inject
	private HelperService helperService;
	
	// 회원가입 화면 처리
	@GetMapping(value="/join")
	public void joinForm() throws Exception {}
	
	// 회원가입 2차 화면 처리
	@GetMapping(value="/join-detail")
	public void joinDetail() throws Exception {}
	
	// 회원가입 완료 화면 처리
	@GetMapping(value="/join-complete")
	public void joinComplete() throws Exception {}
	
	// 로그인 화면 처리
	@GetMapping(value="/login")
	public void loginForm() throws Exception {}
	
	// 마이페이지 화면 처리
	@GetMapping(value="/mypage")
	public void myPageActInfo(@RequestParam("hpId") String hpId, Model model) throws Exception {
		// List<NoticeVO> nvo = noticeService.getNoticeListTop3();
		// CombineDataVO cdvo = combineDataService.getDataList(hpid);
		HelperVO hvo = helperService.getHelperInfo(hpId);
		
		model.addAttribute("mypage",hvo);
		// model.addAttribute("notice",nvo);
		// model.addAttribute("cbdata",cdvo);
	}
	
	// 계정 정보 수정 페이지 화면 처리
	@GetMapping(value="/modify")
	public void modify(@RequestParam("hpId") String hpId, Model model) throws Exception {
		HelperVO hvo = helperService.getHelperInfo(hpId);
		model.addAttribute(hvo);
	}
	
}