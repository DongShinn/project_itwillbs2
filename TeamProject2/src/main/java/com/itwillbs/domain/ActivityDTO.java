package com.itwillbs.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ActivityDTO {
	private int actNum;
	private String actTitle;
	private String actContent;
	private String actLocation;
	private String companyName;
	private String actPrice;
	private String actPhone;
	private String actReservation;
	private String actParking;
	private String actCategory;
	private String actOperationTime;
	private String actDayoff;
	private String imgNameKey;
	
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
	public String getActContent() {
		return actContent;
	}
	public void setActContent(String actContent) {
		this.actContent = actContent;
	}
	public String getActLocation() {
		return actLocation;
	}
	public void setActLocation(String actLocation) {
		this.actLocation = actLocation;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getActPrice() {
		return actPrice;
	}
	public void setActPrice(String actPrice) {
		this.actPrice = actPrice;
	}
	public String getActPhone() {
		return actPhone;
	}
	public void setActPhone(String actPhone) {
		this.actPhone = actPhone;
	}
	public String getActReservation() {
		return actReservation;
	}
	public void setActReservation(String actReservation) {
		this.actReservation = actReservation;
	}
	public String getActParking() {
		return actParking;
	}
	public void setActParking(String actParking) {
		this.actParking = actParking;
	}
	public String getActCategory() {
		return actCategory;
	}
	public void setActCategory(String actCategory) {
		this.actCategory = actCategory;
	}
	public String getActOperationTime() {
		return actOperationTime;
	}
	public void setActOperationTime(String actOperationTime) {
		this.actOperationTime = actOperationTime;
	}
	public String getActDayoff() {
		return actDayoff;
	}
	public void setActDayoff(String actDayoff) {
		this.actDayoff = actDayoff;
	}
	public String getImgNameKey() {
		return imgNameKey;
	}
	public void setImgNameKey(String imgNameKey) {
		this.imgNameKey = imgNameKey;
	}
	
	
	
}
