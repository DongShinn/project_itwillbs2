package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.ActivityDTO;
import com.itwillbs.domain.ReviewDTO;

public interface MainDAO {

	public List<ActivityDTO> getMainContentList();
	public List<ActivityDTO> getMainInterestList(String userId);
	public List<ActivityDTO> getMainAreaList(String userId);
	public List<ReviewDTO> getMainReviewNewestList();
}
