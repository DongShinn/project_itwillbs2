package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.UserInterestAreaDAO;
import com.itwillbs.domain.InterestAreaDTO;

@Service
public class UserInterestAreaServiceImpl implements UserInterestAreaService{

	@Inject
	private UserInterestAreaDAO userInterestAreaDAO;

	@Override
	public void userInterestArea(InterestAreaDTO dto) {
		userInterestAreaDAO.userInterestArea(dto);
	}

	@Override
	public InterestAreaDTO getUserInterestArea(String id) {
		return userInterestAreaDAO.getUserInterestArea(id);
	}

	@Override
	public void deleteUserInterestArea(InterestAreaDTO dto) {
		userInterestAreaDAO.deleteUserInterestArea(dto);
	}

	@Override
	public List<InterestAreaDTO> getMyAreaInterest(String userId) {
		return userInterestAreaDAO.getMyAreaInterest(userId);
	}
}
