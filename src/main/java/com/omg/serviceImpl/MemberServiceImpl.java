package com.omg.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.omg.domain.MemberVO;
import com.omg.repository.MemberRepository;
import com.omg.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberRepository memberRepository;

	@Override
	public MemberVO idCheck(String id) throws Exception {
		return  memberRepository.idCheck(id);
	}

	@Override
	public void insert(MemberVO mvo) throws Exception {
		memberRepository.insert(mvo);
	}

	@Override
	public void insertDetail(MemberVO mvo) throws Exception {
		memberRepository.insertDetail(mvo);
	}
	
	@Override
	public MemberVO login(MemberVO mvo) throws Exception {
		return memberRepository.login(mvo);
	}
	
	@Override
	public MemberVO getMemberInfo(String userid) throws Exception {
		return memberRepository.getMemberInfo(userid);
	}

	@Override
	public void modify(MemberVO mvo) throws Exception {
		memberRepository.modify(mvo);
	}

	@Override
	public void delete(MemberVO mvo) throws Exception {
		memberRepository.delete(mvo);
	}

	@Override
	public List<MemberVO> getMemberList() throws Exception {
		return memberRepository.getMemberList();
	}

	@Override
	public int getMemberCnt() throws Exception {
		return memberRepository.getMemberCnt();
	}

	@Override
	public int getMenCnt(String gender) throws Exception {
		return memberRepository.getMenCnt(gender);
	}

	@Override
	public int getWomenCnt(String gender) throws Exception {
		return memberRepository.getWomenCnt(gender);
	}

	@Override
	public MemberVO nickCheck(String nickname) throws Exception {
		return memberRepository.nickCheck(nickname);
	}

	@Override
	public int getAge30(String age) throws Exception {
		return memberRepository.getAge30(age);
	}

	@Override
	public int getAge40(String age) throws Exception {
		return memberRepository.getAge40(age);
	}

	@Override
	public int getAge50(String age) throws Exception {
		return memberRepository.getAge50(age);
	}

	@Override
	public int getAge60(String age) throws Exception {
		return memberRepository.getAge60(age);
	}

	@Override
	public int getAge70(String age) throws Exception {
		return memberRepository.getAge70(age);
	}

	@Override
	public int getAge80(String age) throws Exception {
		return memberRepository.getAge80(age);
	}

	@Override
	public void loginCnt(String id) throws Exception {
		memberRepository.loginCnt(id);
	}
	

}










