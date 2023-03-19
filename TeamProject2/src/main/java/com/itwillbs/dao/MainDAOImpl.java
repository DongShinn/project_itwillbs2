package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ActivityDTO;
import com.itwillbs.domain.ReviewDTO;

@Repository
public class MainDAOImpl implements MainDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.mainMapper";

	@Override
	public List<ActivityDTO> getMainContentList() {
		
		return sqlSession.selectList(namespace + ".getMainContentList");
	}

	@Override
	public List<ActivityDTO> getMainInterestList(String userId) {
		
		return sqlSession.selectList(namespace + ".getMainInterestList", userId);
	}
	
	@Override
	public List<ActivityDTO> getMainAreaList(String userId) {
		return sqlSession.selectList(namespace + ".getMainAreaList", userId);
	}
	
	@Override
	public List<ReviewDTO> getMainReviewNewestList() {

		return sqlSession.selectList(namespace + ".getMainReviewNewestList");
	}
}
