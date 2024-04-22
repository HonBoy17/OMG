package com.omg.repositoryImpl;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.omg.domain.EmpVO;
import com.omg.repository.EmpRepository;

@Repository
public class EmpRepositoryImpl implements EmpRepository {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.omg.mappers.emp";
	
	@Override
	public void insert(EmpVO evo) throws Exception {
		sql.insert(namespace + ".insert", evo);
	}

}
