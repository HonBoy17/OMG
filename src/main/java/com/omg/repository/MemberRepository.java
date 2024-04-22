package com.omg.repository;

import java.util.List;

import com.omg.domain.MemberVO;

public interface MemberRepository {
	
	// 회원목록
	public List<MemberVO> getMemberList() throws Exception;
	
	// 아이디 중복 확인
	public MemberVO idCheck(String id) throws Exception;
	
	// 닉네임 중복 확인
	public MemberVO nickCheck(String nickname) throws Exception;

	// 회원가입 1차 데이터
	public void insert(MemberVO mvo) throws Exception;
	
	// 회원가입 2차 데이터
	public void insertDetail(MemberVO mvo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO mvo) throws Exception;
	
	// 로그인시 접속 횟수 증가
	public void loginCnt(String id) throws Exception;
	
	// 정보수정 화면처리, 마이페이지 화면처리
	public MemberVO getMemberInfo(String userid) throws Exception;
	
	// 정보수정 데이터처리
	public void modify(MemberVO mvo) throws Exception;
	
	// 회원삭제
	public void delete(MemberVO mvo) throws Exception;
	
	public int getMemberCnt() throws Exception;
	
	public int getMenCnt(String gender) throws Exception;
	
	public int getWomenCnt(String gender) throws Exception;
	
	public int getAge30(String age) throws Exception;
	public int getAge40(String age) throws Exception;
	public int getAge50(String age) throws Exception;
	public int getAge60(String age) throws Exception;
	public int getAge70(String age) throws Exception;
	public int getAge80(String age) throws Exception;

}










