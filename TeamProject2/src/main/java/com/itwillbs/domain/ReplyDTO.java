package com.itwillbs.domain;

import java.sql.Timestamp;

public class ReplyDTO {
	//멤버변수
	private int num;
	private String user_id;
	private String subject;
	private String content;
	private int readcount;
	private Timestamp date;
	//file
	private String file;
	// re_ref ,  re_lev   re_seq
	private int re_ref;
	private int re_lev;
	private int re_seq;
	private int review_Num;
	
	public int getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(int re_ref) {
		this.re_ref = re_ref;
	}
	public int getRe_lev() {
		return re_lev;
	}
	public void setRe_lev(int re_lev) {
		this.re_lev = re_lev;
	}
	public int getReview_Num() {
		return review_Num;
	}
	public void setReview_Num(int review_Num) {
		this.review_Num = review_Num;
	}
	public int getRe_seq() {
		return re_seq;
	}
	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}
	
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
	//메서드
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "BoardDTO [num=" + num + ", user_id=" + user_id + ", subject=" + subject + ", content=" + content
				+ ", readcount=" + readcount + ", date=" + date + ", file=" + file + ", re_ref=" + re_ref + ", re_lev="
				+ re_lev + ", re_seq=" + re_seq + ", review_Num=" + review_Num + "]";
	}

	
	
	
	
}
