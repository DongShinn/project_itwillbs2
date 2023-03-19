package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.domain.ReplyDTO;
import com.itwillbs.domain.RePageDTO;

public interface ReviewDAO {
	//추상메서드
	// 리턴할형 없음 insertBoard(BoardDTO 주소값 저장하는 변수) 메서드 정의
	public void insertReview(ReviewDTO dto);
	// getMaxNum
	public Integer getMaxNum();
	
	// List<BoardDTO> 리턴할형 getBoardList(PageDTO dto) 메서드 정의
	public List<ReviewDTO> getReviewList(RePageDTO dto);
	
	public int getReviewCount();
	
	// 조회수 증가
	public void updateReadcount(int num);
	
	// 글가져오기 메서드 호출
	public ReviewDTO getReview(int num);
	
	public void updateReview(ReviewDTO dto);
	
	public void deleteReview(int num);
	
	// 댓글
	public void insertBoard(ReplyDTO replyDTO);
	
	public Integer regetMaxNum();
	
	public List<ReplyDTO> getBoardList(RePageDTO pageDTO);
	
	public int getBoardCount();
	
	public ReplyDTO getBoard(int num);
	
	public void updateBoard(ReplyDTO replyDTO);
	
	public void deleteBoard(ReplyDTO replyDTO);;
	
	public void updateReSeq(ReplyDTO replyDTO);
	
}
