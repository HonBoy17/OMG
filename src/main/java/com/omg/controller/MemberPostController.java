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

import com.omg.domain.MemberVO;
import com.omg.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberPostController { // Member POST Data Process Controller
	
	@Inject
	private MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// 아이디 중복 확인
	@ResponseBody
	@PostMapping(value="/idcheck")
	public String idCheck(HttpServletRequest request) throws Exception {
		
		String id = request.getParameter("id");
		MemberVO mvo = memberService.idCheck(id);
		
		String result = null;
		
		if (mvo != null) { result = "duplicated"; }
		
		return result;
	}
	
	// 닉네임 중복 확인
	@ResponseBody
	@PostMapping(value="/nickcheck")
	public String nickCheck(HttpServletRequest request) throws Exception {
		String nickname = request.getParameter("nickname");
		MemberVO mvo = memberService.nickCheck(nickname);
		
		String result = null;
		
		if (mvo != null) { result = "duplicated"; }
		
		return result;
	}
	
	// 회원가입 기본 데이터(MemberVO)
	@PostMapping(value="/join")
	public String join(MemberVO mvo,RedirectAttributes rttr) throws Exception {
		
	    // 비밀번호 인코딩 처리
		String pwd = mvo.getMbPassword();
		String encodedPwd = passwordEncoder.encode(pwd);
		mvo.setMbPassword(encodedPwd);
		memberService.insert(mvo);
		
		// 2차 화면으로 id 값 전송
		String mbId = mvo.getMbId();
		rttr.addFlashAttribute("mbId",mbId);
		
		return "redirect:/member/join-detail";
	}
	
	// 회원가입 2차 데이터 처리 (Request&Caution)
	@PostMapping(value="/join-detail")
	public String joinDetail(MemberVO mvo) throws Exception {
		memberService.insertDetail(mvo);
		
		return "redirect:/member/join-complete";
	}
	
	// 로그인 데이터(MemberVO)
	@PostMapping(value="/login")
	public String loginData(MemberVO mvo, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		HttpSession session = request.getSession();
		MemberVO dbmvo = memberService.login(mvo);
		
		if (dbmvo == null) {
			rttr.addFlashAttribute("msg", "idNull");
			return "redirect:/member/login";
		}
		
		
		boolean passMatch = passwordEncoder.matches(mvo.getMbPassword(), dbmvo.getMbPassword());
		
		if (passMatch) { // 로그인 성공
			session.setAttribute("user", dbmvo);
		} else { // 로그인 실패
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", "pwdEncorrect");
			return "redirect:/member/login";
		}
		
		// 접속 횟수 증가
//		String id = dbmvo.getMbId();
//		memberService.loginCnt(id);
		
		return "redirect:/";
	}
	
	// 정보수정 데이터 처리
	@PostMapping(value="/modify")
	public String modify(MemberVO mvo) throws Exception {
		memberService.modify(mvo);
		
		return "redirect:/member/mypage?mbId="+mvo.getMbId();
	}
	
	// 회원삭제 데이터 처리
	@PostMapping(value="/delete")
	public String deletePost(MemberVO mvo, HttpSession session) throws Exception {
		String userId = mvo.getMbId();
		String userPass = mvo.getMbPassword();
		MemberVO member = memberService.getMemberInfo(userId); 
		String memberPass = member.getMbPassword();
		
		if (userPass.equals(memberPass)) {
			memberService.delete(mvo);
			session.invalidate();
		}
		
		return "redirect:/";
	}

}