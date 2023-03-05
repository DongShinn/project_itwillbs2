package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.ActImgDTO;

public interface ActImgDAO {
	public void insertActImg(ActImgDTO actImgDto);
	public ActImgDTO getActImg(ActImgDTO actImgDto);
	public void updateActImg(ActImgDTO actImgDto);
	public void deleteActImg(ActImgDTO actImgDto);
	public List<ActImgDTO> getActImgList(int actNum);
	
}
