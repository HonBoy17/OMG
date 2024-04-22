package com.omg.service;

import java.util.List;

import com.omg.domain.CsVO;

public interface CsService {
	
	// 게시물 등록
	public void insert(CsVO cvo) throws Exception;
	
	// 게시물 리스트 가져오기
	public List<CsVO> getList() throws Exception;
}
