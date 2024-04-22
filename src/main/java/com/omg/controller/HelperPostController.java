package com.omg.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.omg.domain.HelperVO;
import com.omg.service.HelperService;

@Controller
@RequestMapping("/helper/*")
public class HelperPostController { // Helper Post Data Process Controller
	
	@Inject
	private HelperService helperService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// 아이디 중복 확인
	@ResponseBody
	@PostMapping(value="/idcheck")
	public String idCheck(HttpServletRequest request) throws Exception {
		
		String id = request.getParameter("id");
		HelperVO hvo = helperService.idCheck(id);
		
		String result = null;
		
		if (hvo != null) { result = "duplicated"; }
		
		return result;
	}
	
	// 닉네임 중복 확인
	@ResponseBody
	@PostMapping(value="/nickcheck")
	public String nickCheck(HttpServletRequest request) throws Exception {
		String nickname = request.getParameter("nickname");
		HelperVO hvo = helperService.nickCheck(nickname);
		
		String result = null;
		
		if (hvo != null) { result = "duplicated"; }
		
		return result;
	}
	
	// 회원가입 1차 데이터(MemberVO)
	@PostMapping(value="/join")
	public String joinInsert(HelperVO hvo, RedirectAttributes rttr) throws Exception {
		String pwd = hvo.getHpPassword();
		String password = passwordEncoder.encode(pwd);
		
		hvo.setHpPassword(password);
		
		helperService.insert(hvo);
		
		String hpId = hvo.getHpId();
		rttr.addFlashAttribute("hpId",hpId);
		
		return "redirect:/helper/join-detail";
	}
	
	// 회원가입 2차 데이터 처리 (CareerNCerticipate)
	@PostMapping(value="/join-detail")
	public String joinDetail(HelperVO hvo) throws Exception {
		helperService.insertDetail(hvo);
		
		return "redirect:/helper/join-complete";
	}
	
	// 로그인 데이터
	@PostMapping(value="/login")
	public String login(HelperVO hvo, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		HttpSession session = request.getSession();
		HelperVO dbhvo = helperService.login(hvo);
		
		if (dbhvo == null) {
			rttr.addFlashAttribute("msg", "idNull");
			return "redirect:/helper/login";
		}
		
		boolean passMatch = passwordEncoder.matches(hvo.getHpPassword(), dbhvo.getHpPassword());
		
		if (passMatch) { // 로그인 성공
			session.setAttribute("user", dbhvo);
		} else { // 로그인 실패
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", "pwdEncorrect");
			return "redirect:/helper/login";
		}
		
		// 헬퍼들도 접속 횟수 데이터가 필요한지 여쭤보기
		
		return "redirect:/";
	}
	
	// 정보 수정 데이터 처리
	@PostMapping(value="modify")
	public String modify(HelperVO hvo) throws Exception {
		helperService.modify(hvo);
		
		return "redirect:/helper/mypage=?hpId="+hvo.getHpId();
	}
	
	
	
		
}
