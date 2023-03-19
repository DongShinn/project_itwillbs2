package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ActImgDTO;
import com.itwillbs.domain.ActPageDTO;
import com.itwillbs.domain.CategoriesDTO;
import com.itwillbs.domain.CommonAreaDTO;
import com.itwillbs.domain.CompanyDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.WishListDTO;
import com.itwillbs.service.CategotiesService;
import com.itwillbs.service.CommonAreaService;
import com.itwillbs.service.CompanyService;
import com.itwillbs.service.MemberService;

@Controller
public class AdminAjaxController {
	
	@Inject
	private CategotiesService categotiesService;
	
	@Inject
	private CommonAreaService commonAreaService;

	
	@RequestMapping(value = "/member/insertCategory", method = RequestMethod.GET)
	public void insertCategory(HttpServletRequest request){
		String category = request.getParameter("insertCategory");
		System.out.println("-----------------------------------------"+category);
		categotiesService.insertCategory(category);
		
	}
	
	@RequestMapping(value = "/member/deleteCategory", method = RequestMethod.GET)
	public void deleteCategory(HttpServletRequest request){
		String category = request.getParameter("deleteCategory");
		
		categotiesService.deleteCategory(category);
		
	}
	
	@RequestMapping(value = "/member/getCategoryList", method = RequestMethod.GET)
	public ResponseEntity<List<CategoriesDTO>> getCategoryList(){
		
		List<CategoriesDTO> categoryList = categotiesService.getCategoryList();
		
		
		ResponseEntity<List<CategoriesDTO>> entity=new ResponseEntity<List<CategoriesDTO>>(categoryList,HttpStatus.OK);
		
		return entity;
	}
	
	@RequestMapping(value = "/member/insertArea", method = RequestMethod.GET)
	public void insertArea(HttpServletRequest request){
		String area = request.getParameter("insertArea");
		
		commonAreaService.insertArea(area);
		
	}
	
	@RequestMapping(value = "/member/deleteArea", method = RequestMethod.GET)
	public void deleteArea(HttpServletRequest request){
		String area = request.getParameter("deleteArea");
		
		commonAreaService.deleteArea(area);
		
	}
	
	@RequestMapping(value = "/member/getAreaList", method = RequestMethod.GET)
	public ResponseEntity<List<CommonAreaDTO>> getAreaList(){
		
		List<CommonAreaDTO> commonAreaList = commonAreaService.getAreaList();
		
		ResponseEntity<List<CommonAreaDTO>> entity=new ResponseEntity<List<CommonAreaDTO>>(commonAreaList,HttpStatus.OK);
		
		return entity;
	}
}
