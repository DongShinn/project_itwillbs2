package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.InterestDTO;

@Repository
public class UserInterestDAOImpl implements UserInterestDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.mappers.userInterestMapper";
	
	@Override
	public void userInterestMember(InterestDTO dto) {
		sqlSession.insert(namespace + ".insertActImg", dto);
	}

	@Override
	public InterestDTO getUserInterest(String id) {
		return sqlSession.selectOne(namespace + ".getUserInterest" , id);
	}

	@Override
	public void deleteUserInterest(InterestDTO dto) {
		sqlSession.delete(namespace + ".deleteUserInterest" , dto);
	}
	
	@Override
	public List<InterestDTO> getMyInterest(String userId) {
		
		return sqlSession.selectList(namespace + ".getMyInterest", userId);
	}
	
	
	
	

}
