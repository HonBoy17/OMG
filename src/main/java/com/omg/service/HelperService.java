package com.omg.service;

import com.omg.domain.HelperVO;

public interface HelperService {
	
	// 아이디 중복 확인
	public HelperVO idCheck(String id) throws Exception;
	
	// 닉네임 중복 확인
	public HelperVO nickCheck(String nickname) throws Exception;
	
	// 회원가입 1차 데이터 처리
	public void insert(HelperVO hvo) throws Exception;
	
	// 회원가입 2차 데이터 처리
	public void insertDetail(HelperVO hvo) throws Exception;
	
	// 로그인
	public HelperVO login(HelperVO hvo) throws Exception;
	
	// 마이페이지 화면 처리
	public HelperVO getHelperInfo(String id) throws Exception;
	
	// 마이페이지 정보 수정 처리
	public void modify(HelperVO hvo) throws Exception;
	
}
