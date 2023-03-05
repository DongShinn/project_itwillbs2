package com.itwillbs.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.ActivityDTO;
import com.itwillbs.domain.ActImgDTO;
import com.itwillbs.domain.ActPageDTO;
import com.itwillbs.domain.WishListDTO;
import com.itwillbs.service.ActImgService;
import com.itwillbs.service.ActivityService;
import com.itwillbs.service.WishListService;

@RestController
public class ActAjaxController {

	@Inject
	private ActivityService activityService;
	
	@Inject
	private ActImgService actImgService;
	
	@Inject
	private WishListService wishListService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "/activity/slist", method = RequestMethod.GET)
	public ResponseEntity<List<ActivityDTO>> slist(HttpServletRequest request){
		int pageSize=9;
		String pageNum=request.getParameter("pageNum");
		String scCategory = request.getParameter("category");
		String scTitle = request.getParameter("title");
		String sessionId = request.getParameter("sessionId");
		System.out.println(sessionId);
		if(sessionId==null){
			sessionId="";
		}
		
		if(scCategory==null){
			scCategory="";
		}
		
		if(scTitle==null){
			scTitle="";
		}
		
		if(pageNum==null) {
			pageNum="1";
		}
		int currentPage=Integer.parseInt(pageNum);

		ActPageDTO actPageDto=new ActPageDTO();
		actPageDto.setPageSize(pageSize);
		actPageDto.setPageNum(pageNum);
		actPageDto.setCurrentPage(currentPage);
		
		actPageDto.setScCategory(scCategory);
		actPageDto.setScTitle(scTitle);
		actPageDto.setSessionId(sessionId);
		
		List<ActivityDTO> actList = activityService.getActivityList(actPageDto);
		
		for(int i=0; i<actList.size(); i++) {
		}
		
		int count=activityService.getActivityCount(actPageDto);
		int pageBlock=5;
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		int pageCount = count/pageSize+(count%pageSize==0? 0 : 1);
		if(endPage > pageCount) {
			endPage=pageCount;
		}
		actPageDto.setCount(pageCount);
		actPageDto.setPageBlock(pageBlock);
		actPageDto.setStartPage(startPage);
		actPageDto.setEndPage(endPage);
		actPageDto.setPageCount(pageCount);
		
		
		ResponseEntity<List<ActivityDTO>> entity=new ResponseEntity<List<ActivityDTO>>(actList,HttpStatus.OK);
		
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value = "/activity/otList", method = RequestMethod.GET)
	public ResponseEntity<List<String>> otList(HttpServletRequest request){
		int actNum=Integer.parseInt(request.getParameter("actNum"));
		ActivityDTO actDto=activityService.getActivity(actNum);
		List<String> otList= new ArrayList<String>();
		String[] ots=actDto.getActOperationTime().replace(" ", ",").replace(":", ",").replace("~", ",").split(",");
		String ot="";
		for(int i=0; i<ots.length; i++) {
			ot=ots[i];
			if(ot.substring(0,1).equals("0")) {
				ot=ot.substring(1);
			}
			otList.add(ot);
		}
		
		ResponseEntity<List<String>> entity=new ResponseEntity<List<String>>(otList,HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/activity/updateImgList", method = RequestMethod.GET)
	public ResponseEntity<List<ActImgDTO>> updateImgList(HttpServletRequest request){
		int actNum=Integer.parseInt(request.getParameter("actNum"));
		List<ActImgDTO> actImgList=actImgService.getActImgList(actNum);
		
		String img="";
		for(int i=0; i<actImgList.size(); i++) {
			img=actImgList.get(i).getImgName();
		}
		
		
		ResponseEntity<List<ActImgDTO>> entity=new ResponseEntity<List<ActImgDTO>>(actImgList,HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/activity/deleteImgBtn", method = RequestMethod.GET)
	public int deleteImgBtn(HttpServletRequest request){
		int actNum=Integer.parseInt(request.getParameter("actNum"));
		int index=Integer.parseInt(request.getParameter("index"));
		System.out.println("actNum= " +actNum);
		System.out.println("imgNum= " +index);
		ActImgDTO actImgDto=new ActImgDTO();
		int imgNum=0;
		List<ActImgDTO> actImgList=actImgService.getActImgList(actNum);
		for(int i=0; i<actImgList.size(); i++) {
			if(index-1==i) {
				imgNum=actImgList.get(i).getImgNum();
			}
		}
		
		actImgDto.setActNum(actNum);
		actImgDto.setImgNum(imgNum);
		actImgDto = actImgService.getActImg(actImgDto);
		actImgService.deleteActImg(actImgDto);
			
		File deleteFile= new File(uploadPath+"\\"+actImgDto.getImgNameKey());
		deleteFile.delete();
		
		return index;
	}
	
	@RequestMapping(value = "/activity/insertWishList", method = RequestMethod.GET)
	public void insertWishList(HttpServletRequest request){
		int actNum=Integer.parseInt(request.getParameter("actNum"));
		String userId=request.getParameter("userId");
		
		WishListDTO wishListDto=new WishListDTO();
		wishListDto.setActNum(actNum);
		wishListDto.setUserId(userId);
		
		wishListService.insertWishList(wishListDto);
		
	}
	
	@RequestMapping(value = "/activity/deleteWishList", method = RequestMethod.GET)
	public void deleteWishList(HttpServletRequest request){
		int actNum=Integer.parseInt(request.getParameter("actNum"));
		String userId=request.getParameter("userId");
		
		WishListDTO wishListDto=new WishListDTO();
		wishListDto.setActNum(actNum);
		wishListDto.setUserId(userId);
		
		wishListService.deleteWishList(wishListDto);
	}
	
	@RequestMapping(value = "/activity/checkWishList", method = RequestMethod.GET)
	public String checkWishList(HttpServletRequest request){
		int actNum=Integer.parseInt(request.getParameter("actNum"));
		String userId=request.getParameter("userId");
		
		WishListDTO wishListDto=new WishListDTO();
		wishListDto.setActNum(actNum);
		wishListDto.setUserId(userId);
		
		String rData=wishListService.checkWishList(wishListDto);
		if(rData==null) {
			rData="no";
		}else {
			rData="yes";
		}
		return rData;
	}
	
	@RequestMapping(value = "/activity/getCompanyName", method = RequestMethod.GET, produces = "application/text; charset=UTF-8")
	public String getCompanyName(HttpServletRequest request){
		String companyId=request.getParameter("companyId");
		String rData=activityService.getCompanyName(companyId);
		
		return rData;
	}
}
