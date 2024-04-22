package com.omg.repository;

import java.util.List;

import com.omg.domain.CsVO;

public interface CsRepository {
	
	// 게시글 등록
	public void insert(CsVO cvo) throws Exception;
	
	// 게시물 리스트 가져오기
	public List<CsVO> getList() throws Exception;
	
}
