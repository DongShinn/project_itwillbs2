package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.CategoriesDAO;
import com.itwillbs.domain.CategoriesDTO;

@Service
public class CategotiesServiceImpl implements CategotiesService{

	@Inject
	private CategoriesDAO categoriesDAO;
	
	@Override
	public void insertCategory(String category) {
		categoriesDAO.insertCategory(category);
	}

	@Override
	public void deleteCategory(String category) {
		categoriesDAO.deleteCategory(category);
	}

	@Override
	public List<CategoriesDTO> getCategoryList() {
		return categoriesDAO.getCategoryList();
	}
	
	

}
