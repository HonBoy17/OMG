package com.omg.controller;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.omg.domain.EmpVO;
import com.omg.service.EmpService;
import com.omg.service.HelperService;
import com.omg.service.MemberService;

@Controller
@RequestMapping("/emp/*")
public class EmpPostController { // Employee Controller
	
	@Inject
	private EmpService empService;
	
	@Inject
	private MemberService memberService;
	
	@Inject
	private HelperService helperService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// 직원 정보 주입 데이터 처리
	@PostMapping(value="/insert")
	public String insert(EmpVO evo) throws Exception {
		
		String pwd = evo.getEmpPassword();
		String encodedPwd = passwordEncoder.encode(pwd);
		evo.setEmpPassword(encodedPwd);
		
		empService.insert(evo);
		
		return "redirect:/";
	}

}