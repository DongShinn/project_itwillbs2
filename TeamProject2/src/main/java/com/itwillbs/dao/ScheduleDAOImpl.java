package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.DateDTO;
import com.itwillbs.domain.ScheduleDTO;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	
	private static final String namespace="com.itwillbs.mappers.scheduleMapper";

	@Override
	public int scheduleAdd(ScheduleDTO scheduleDTO) {
		
		System.out.println("인설트"+scheduleDTO);
		return sqlSession.insert(namespace + ".scheduleAdd" , scheduleDTO );
	}

	@Override
	public int beforeScheduleAddSearch(ScheduleDTO scheduleDTO) {
		
		
		return sqlSession.selectOne(namespace +".beforeScheduleAddSearch" , scheduleDTO);
	}

	@Override
	public List<ScheduleDTO> scheduleList(DateDTO dateDTO) {
		
		System.out.println("쿼리 호출 전: " + dateDTO);
		return sqlSession.selectList(namespace + ".scheduleList",dateDTO);
	}
	
	
}
