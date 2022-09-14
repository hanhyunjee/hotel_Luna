package com.hotel.HH.DTO;

import java.sql.Timestamp;

//create table QnA (
//	    q_no number(20,0) not null PRIMARY KEY,
//	    q_title varchar2(200) not null,
//	    q_detail varchar2(100),
//	    q_writer varchar2(7),
//	    q_date date,
//	    q_count number(11) default 0
//	);

public class QnADTO {
	private int q_no; //게시글번호
	private String q_title; //게시글 제목
	private String q_detail;//게시글 내용
	private String q_writer; //게시글 작성자
	private Timestamp q_date; //게시글 작성일
	private int q_count; //조회수

	public int getQ_no() {
		return q_no;
	}

	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_detail() {
		return q_detail;
	}

	public void setQ_detail(String q_detail) {
		this.q_detail = q_detail;
	}

	public String getQ_writer() {
		return q_writer;
	}

	public void setQ_writer(String q_writer) {
		this.q_writer = q_writer;
	}

	public Timestamp getQ_date() {
		return q_date;
	}

	public void setQ_date(Timestamp q_date) {
		this.q_date = q_date;
	}

	public int getQ_count() {
		return q_count;
	}

	public void setQ_count(int q_count) {
		this.q_count = q_count;
	}



	@Override
	public String toString() {
		return "QnADTO [q_no=" + q_no + ", q_title=" + q_title + ", q_detail=" + q_detail + ", q_writer=" + q_writer
				+ ", q_date=" + q_date + ", q_count=" + q_count + "]";
	}

}