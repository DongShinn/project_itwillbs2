package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.CrewReplyDTO;
import com.itwillbs.domain.CrewPageDTO;


public interface CrewReplyService {

	// 댓글 쓰기
	public void insertReply(CrewReplyDTO crewReplyDTO);
	
	// 대댓글 쓰기
	public void insertReReply(CrewReplyDTO crewReplyDTO);

	// List<CrewReplyDTO> 리턴할형 getCrewReplyList(pageDTO pageDTO);
	public List<CrewReplyDTO> getCrewReplyList(CrewPageDTO pageDTO);
	
	public List<CrewReplyDTO> getCrewReplyList(int num);
	
	// 댓글수
	public int getCrewReplyCount(int num);	
	
	// 부모 댓글 삭제
	public void deleteReply(CrewReplyDTO crewReplyDTO);

	// 자식 댓글 삭제
	public void deleteReReply(CrewReplyDTO crewReplyDTO);
	
	// 글 수정
	public void updateReply(CrewReplyDTO crewReplyDTO);
	

}
