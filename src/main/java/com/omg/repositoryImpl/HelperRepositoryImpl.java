package com.omg.repositoryImpl;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.omg.domain.HelperVO;
import com.omg.repository.HelperRepository;

@Repository
public class HelperRepositoryImpl implements HelperRepository {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.omg.mappers.helper";
	
	@Override
	public HelperVO idCheck(String id) throws Exception {
		return sql.selectOne(namespace + ".idCheck", id);
	}

	@Override
	public HelperVO nickCheck(String nickname) throws Exception {
		return sql.selectOne(namespace + ".nickCheck", nickname);
	}

	@Override
	public void insert(HelperVO hvo) throws Exception {
		sql.insert(namespace + ".insert", hvo);
	}

	@Override
	public void insertDetail(HelperVO hvo) throws Exception {
		sql.selectOne(namespace + ".insertDetail",hvo);
	}
	
	@Override
	public HelperVO login(HelperVO hvo) throws Exception {
		return sql.selectOne(namespace + ".login", hvo);
	}

	@Override
	public HelperVO getHelperInfo(String id) throws Exception {
		return sql.selectOne(namespace + ".view", id);
	}

	@Override
	public void modify(HelperVO hvo) throws Exception {
		sql.update(namespace + ".modify", hvo);
	}

}
