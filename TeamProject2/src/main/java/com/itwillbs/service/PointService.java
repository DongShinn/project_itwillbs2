package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.PointDTO;
import com.itwillbs.domain.PointPageDTO;

public interface PointService {
	
		//포인트 회원정보 가져오기
		PointDTO getMember(String userId);

		//포인트(아이디) 수 조회
		int getPointCount(String userId);

		//포인트 DB 저장
		void insertMember(PointDTO pointDTO);

		List<PointDTO> getPointCheckList(PointPageDTO pointPageDTO);

		public int getptPageCount();
}
