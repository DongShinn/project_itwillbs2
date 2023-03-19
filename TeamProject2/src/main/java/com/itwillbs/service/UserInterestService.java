package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.InterestDTO;

public interface UserInterestService {

	public void userInterestMember(InterestDTO dto);
	public InterestDTO getUserInterest(String id);
	public void deleteUserInterest(InterestDTO dto);
	public List<InterestDTO> getMyInterest(String userId);

}
