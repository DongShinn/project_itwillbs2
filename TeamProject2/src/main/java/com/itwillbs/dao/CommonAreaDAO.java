package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.CommonAreaDTO;

public interface CommonAreaDAO {
	
	public void insertArea(String Area);
	public void deleteArea(String Area);
	public List<CommonAreaDTO> getAreaList();
}
