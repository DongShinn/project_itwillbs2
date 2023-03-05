package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ActImgDTO;


@Repository
public class ActiImgDAOImpl implements ActImgDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.actImgMapper";
	
	@Override
	public void insertActImg(ActImgDTO actImgDto) {
		sqlSession.insert(namespace + ".insertActImg", actImgDto);
	}
	@Override
	public void updateActImg(ActImgDTO actImgDto) {
		sqlSession.insert(namespace + ".updateActImg", actImgDto);
	}
	@Override
	public void deleteActImg(ActImgDTO actImgDto) {
		sqlSession.delete(namespace+".deleteActImg",actImgDto);
	}
	@Override
	public List<ActImgDTO> getActImgList(int actNum) {
		return sqlSession.selectList(namespace+".getActImgList",actNum);
	}
	@Override
	public ActImgDTO getActImg(ActImgDTO actImgDto) {
		return sqlSession.selectOne(namespace+".getActImg",actImgDto);
	}

	

	
	
}
