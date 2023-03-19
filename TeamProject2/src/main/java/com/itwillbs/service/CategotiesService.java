package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.CategoriesDTO;

public interface CategotiesService {
	
	public void insertCategory(String category);
	public void deleteCategory(String category);
	public List<CategoriesDTO> getCategoryList();

}
