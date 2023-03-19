package com.itwillbs.domain;

public class InterestAreaDTO {
	
	private String userId;
	private String area;
	private String checked;
	
	
	
	public String getChecked() {
		return checked;
	}
	public void setChecked(String checked) {
		this.checked = checked;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
	@Override
	public String toString() {
		return "InterestAreaDTO [userId=" + userId + ", area=" + area + "]";
	}
	
	

}
