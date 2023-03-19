package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.CategoriesDTO;

public interface CategoriesDAO {
	
	public void insertCategory(String category);
	public void deleteCategory(String category);
	public List<CategoriesDTO> getCategoryList();
}
