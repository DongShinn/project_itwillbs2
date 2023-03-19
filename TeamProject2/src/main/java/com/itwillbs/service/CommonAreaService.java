package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.CommonAreaDTO;

public interface CommonAreaService {
	
	public void insertArea(String Area);
	public void deleteArea(String Area);
	public List<CommonAreaDTO> getAreaList();

}
