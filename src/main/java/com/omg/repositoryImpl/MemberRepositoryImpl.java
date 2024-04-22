package com.omg.repositoryImpl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.omg.domain.MemberVO;
import com.omg.repository.MemberRepository;

@Repository
public class MemberRepositoryImpl implements MemberRepository {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.omg.mappers.member";

	@Override
	public MemberVO idCheck(String id) throws Exception {
		return sql.selectOne(namespace + ".idCheck", id);
	}
	
	@Override
	public void insert(MemberVO mvo) throws Exception {
		sql.insert(namespace + ".insert", mvo);
	}
	
	@Override
	public void insertDetail(MemberVO mvo) throws Exception {
		sql.selectOne(namespace + ".insertDetail",mvo);
	}
	
	@Override
	public MemberVO login(MemberVO mvo) throws Exception {
		return sql.selectOne(namespace + ".login", mvo);
	}
	
	@Override
	public void loginCnt(String id) throws Exception {
		sql.update(namespace + ".loginCnt", id);
	}
	
	@Override
	public MemberVO getMemberInfo(String userid) throws Exception {
		return sql.selectOne(namespace + ".view", userid);
	}

	@Override
	public void modify(MemberVO mvo) throws Exception {
		sql.update(namespace + ".modify", mvo);
	}

	@Override
	public void delete(MemberVO mvo) throws Exception {
		sql.delete(namespace + ".delete", mvo);
	}

	@Override
	public List<MemberVO> getMemberList() throws Exception {
		return sql.selectList(namespace + ".list");
	}

	@Override
	public int getMemberCnt() throws Exception {
		return sql.selectOne(namespace + ".memberCnt");
	}

	@Override
	public int getMenCnt(String gender) throws Exception {
		return sql.selectOne(namespace + ".genderCnt", gender);
	}

	@Override
	public int getWomenCnt(String gender) throws Exception {
		return sql.selectOne(namespace + ".genderCnt", gender);
	}

	@Override
	public MemberVO nickCheck(String nickname) throws Exception {
		return sql.selectOne(namespace + ".nickCheck", nickname);
	}

	@Override
	public int getAge30(String age) throws Exception {
		return sql.selectOne(namespace + ".ageCnt", age);
	}

	@Override
	public int getAge40(String age) throws Exception {
		return sql.selectOne(namespace + ".ageCnt", age);
	}

	@Override
	public int getAge50(String age) throws Exception {
		return sql.selectOne(namespace + ".ageCnt", age);
	}

	@Override
	public int getAge60(String age) throws Exception {
		return sql.selectOne(namespace + ".ageCnt", age);
	}

	@Override
	public int getAge70(String age) throws Exception {
		return sql.selectOne(namespace + ".ageCnt", age);
	}

	@Override
	public int getAge80(String age) throws Exception {
		return sql.selectOne(namespace + ".ageCnt", age);
	}


}










