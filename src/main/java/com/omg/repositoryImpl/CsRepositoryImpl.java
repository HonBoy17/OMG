package com.omg.repositoryImpl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.omg.domain.CsVO;

@Repository
public class CsRepositoryImpl implements com.omg.repository.CsRepository {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.omg.mappers.cs";
	
	@Override
	public void insert(CsVO cvo) throws Exception {
		sql.insert(namespace + ".insert",cvo);
	}

	@Override
	public List<CsVO> getList() throws Exception {
		return sql.selectList(namespace + ".getList");
	}

}
