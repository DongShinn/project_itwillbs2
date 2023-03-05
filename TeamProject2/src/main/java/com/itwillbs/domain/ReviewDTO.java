package com.itwillbs.domain;

import java.sql.Timestamp;

/**
 * @author Shin
 *
 */
public class ReviewDTO {
	
	//멤버변수
	private int reviewNum;
	private String userId;
	private double reviewScore;
	private String reviewTitle;
	private String reviewContext;
	private String reviewFile;
	private Timestamp reviewDate;
	private int actNum;
	private String actTitle;
	private String imgNameKey;
	private int readcount;

	
	

	public int getReviewNum() {
		return reviewNum;
	}




	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}




	public String getUserId() {
		return userId;
	}




	public void setUserId(String userId) {
		this.userId = userId;
	}




	public double getReviewScore() {
		return reviewScore;
	}




	public void setReviewScore(double reviewScore) {
		this.reviewScore = reviewScore;
	}






	public String getReviewTitle() {
		return reviewTitle;
	}




	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}




	public String getReviewContext() {
		return reviewContext;
	}




	public void setReviewContext(String reviewContext) {
		this.reviewContext = reviewContext;
	}




	public String getReviewFile() {
		return reviewFile;
	}




	public void setReviewFile(String reviewFile) {
		this.reviewFile = reviewFile;
	}




	public Timestamp getReviewDate() {
		return reviewDate;
	}




	public void setReviewDate(Timestamp reviewDate) {
		this.reviewDate = reviewDate;
	}




	public int getActNum() {
		return actNum;
	}




	public void setActNum(int actNum) {
		this.actNum = actNum;
	}




	public String getActTitle() {
		return actTitle;
	}




	public void setActTitle(String actTitle) {
		this.actTitle = actTitle;
	}




	public String getImgNameKey() {
		return imgNameKey;
	}




	public void setImgNameKey(String imgNameKey) {
		this.imgNameKey = imgNameKey;
	}




	public int getReadcount() {
		return readcount;
	}




	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}




	@Override
	public String toString() {
		return "ReviewDTO [review_Num=" + reviewNum + ", user_id=" + userId + ", review_Score=" + reviewScore
				+ ", review_Title=" + reviewTitle + ", review_Context=" + reviewContext + ", review_File="
				+ reviewFile + ", review_Date=" + reviewDate + ", act_Num=" + actNum + ", act_Title=" + actTitle
				+ ", img_name_key=" + imgNameKey + ", readcount=" + readcount + "]";
	}

	
	
}
