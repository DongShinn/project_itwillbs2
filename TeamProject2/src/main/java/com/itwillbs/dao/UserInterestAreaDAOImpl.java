package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.InterestAreaDTO;
import com.itwillbs.domain.InterestDTO;

@Repository
public class UserInterestAreaDAOImpl implements UserInterestAreaDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.mappers.userInterestAreaMapper";

	@Override
	public void userInterestArea(InterestAreaDTO dto) {
		sqlSession.insert(namespace + ".insertAreaActImg" , dto);
	}

	@Override
	public InterestAreaDTO getUserInterestArea(String id) {
		return sqlSession.selectOne(namespace + ".getUserInterestArea" , id);
	}

	@Override
	public void deleteUserInterestArea(InterestAreaDTO dto) {
		sqlSession.delete(namespace + ".deleteUserInterestArea" , dto);
	}
	
	// mypage
	@Override
	public List<InterestDTO> getMyInterest(String userId) {
		
		return sqlSession.selectList(namespace + ".getMyInterest", userId);
	}
	
	@Override
	public List<InterestAreaDTO> getMyAreaInterest(String userId) {
		
		return sqlSession.selectList(namespace + ".getMyAreaInterest", userId);
	}

}
