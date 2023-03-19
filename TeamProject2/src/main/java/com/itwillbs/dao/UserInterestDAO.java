package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.InterestDTO;

public interface UserInterestDAO {
	
	public void userInterestMember(InterestDTO dto);
	public InterestDTO getUserInterest(String id);
	public void deleteUserInterest(InterestDTO dto);
	public List<InterestDTO> getMyInterest(String userId);

}
