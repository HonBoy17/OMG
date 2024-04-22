package com.omg.repository;

import com.omg.domain.EmpVO;

public interface EmpRepository {
	
	// 직원 정보 주입
	public void insert(EmpVO evo) throws Exception;
	
}
