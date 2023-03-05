package com.itwillbs.domain;

import java.sql.Timestamp;

public class CrewDTO {

	private int crewNum;			// 글번호
	private String userId;			// 회원 아이디
	private String crewCategory;	// 카테고리
	private String crewSubject;		// 글제목
	private String crewContent;		// 글내용
	private int crewReadcount;		// 조회수
	private Timestamp crewDate;		// 작성일
	
	// 댓글 개수 가져오기
	private int replyCount;
	
	// 현재 사용자가 좋아요를 눌렀나요?
	private int clNum;
	
	// 좋아요 개수 가져오기
	private int likeCount;

	public int getCrewNum() {
		return crewNum;
	}
	public void setCrewNum(int crewNum) {
		this.crewNum = crewNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCrewCategory() {
		return crewCategory;
	}
	public void setCrewCategory(String crewCategory) {
		this.crewCategory = crewCategory;
	}
	public String getCrewSubject() {
		return crewSubject;
	}
	public void setCrewSubject(String crewSubject) {
		this.crewSubject = crewSubject;
	}
	public String getCrewContent() {
		return crewContent;
	}
	public void setCrewContent(String crewContent) {
		this.crewContent = crewContent;
	}
	public int getCrewReadcount() {
		return crewReadcount;
	}
	public void setCrewReadcount(int crewReadcount) {
		this.crewReadcount = crewReadcount;
	}
	public Timestamp getCrewDate() {
		return crewDate;
	}
	public void setCrewDate(Timestamp crewDate) {
		this.crewDate = crewDate;
	}
	public int getReplyCount() {
		return replyCount;
	}
	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public int getClNum() {
		return clNum;
	}
	public void setClNum(int clNum) {
		this.clNum = clNum;
	}


}
