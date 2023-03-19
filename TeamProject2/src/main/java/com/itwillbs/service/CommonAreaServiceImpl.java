package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.CategoriesDAO;
import com.itwillbs.dao.CommonAreaDAO;
import com.itwillbs.domain.CategoriesDTO;
import com.itwillbs.domain.CommonAreaDTO;

@Service
public class CommonAreaServiceImpl implements CommonAreaService{

	@Inject
	private CommonAreaDAO commonAreaDAO;

	@Override
	public void insertArea(String Area) {
		commonAreaDAO.insertArea(Area);
	}

	@Override
	public void deleteArea(String Area) {
		commonAreaDAO.deleteArea(Area);
	}

	@Override
	public List<CommonAreaDTO> getAreaList() {
		return commonAreaDAO.getAreaList();
	}
	

	

}
