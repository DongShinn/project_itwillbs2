package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.InterestAreaDTO;

public interface UserInterestAreaService {

	public void userInterestArea(InterestAreaDTO dto);
	public InterestAreaDTO getUserInterestArea(String id);
	public void deleteUserInterestArea(InterestAreaDTO dto);
	public List<InterestAreaDTO> getMyAreaInterest(String userId);

}
