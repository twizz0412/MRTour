package com.mrtour.model.board;

import java.sql.Date;

public class BoardVO {

	private int board_no;  // 게시글 번호
	private String b_title;	// 게시글 제목
	private String b_content;// 게시글 내용			
	private String b_id;	// 작성자 id
	private Date b_writedate;// 작성일(java.util.Date)
	private int b_viewcnt;	// 조회수
	private String b_name;	// 작성자 이름
	private int b_comments;	// 댓글 수
	private String b_show;	// 화면 표시 여부
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public Date getB_writedate() {
		return b_writedate;
	}
	public void setB_writedate(Date b_writedate) {
		this.b_writedate = b_writedate;
	}
	public int getB_viewcnt() {
		return b_viewcnt;
	}
	public void setB_viewcnt(int b_viewcnt) {
		this.b_viewcnt = b_viewcnt;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public int getB_comments() {
		return b_comments;
	}
	public void setB_comments(int b_comments) {
		this.b_comments = b_comments;
	}
	public String getB_show() {
		return b_show;
	}
	public void setB_show(String b_show) {
		this.b_show = b_show;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [board_no=" + board_no + ", b_title=" + b_title 
				+ ", b_content=" + b_content + ", b_id=" + b_id 
				+ ", b_writedate="+ b_writedate + ", b_viewcnt=" + b_viewcnt 
				+ ", b_name=" + b_name + ", b_comments=" + b_comments 
				+ ", b_show=" + b_show + "]";
	}
}
