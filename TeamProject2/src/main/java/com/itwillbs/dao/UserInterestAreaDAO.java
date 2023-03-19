package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.InterestAreaDTO;
import com.itwillbs.domain.InterestDTO;

public interface UserInterestAreaDAO {
	
	public void userInterestArea(InterestAreaDTO dto);
	public InterestAreaDTO getUserInterestArea(String id);
	public void deleteUserInterestArea(InterestAreaDTO dto);
	
	// mypage
	public List<InterestDTO> getMyInterest(String userId);
	public List<InterestAreaDTO> getMyAreaInterest(String userId);
}
