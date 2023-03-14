package com.mrtour.model.product;

public class TicketVO {
	
	private int city_no; // 지역 번호
	private String ticket_name; // 티켓 이름
	private int ticket_price; // 티켓 가격
	private String prd_type; // 상품 카테고리(유형)
	private String prd_id; // 상품식별 아이디, 상품 코드(FK)
	private String prd_opt; // 상품 옵션	
	
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public String getTicket_name() {
		return ticket_name;
	}
	public void setTicket_name(String ticket_name) {
		this.ticket_name = ticket_name;
	}
	public int getTicket_price() {
		return ticket_price;
	}
	public void setTicket_price(int ticket_price) {
		this.ticket_price = ticket_price;
	}
	public String getPrd_type() {
		return prd_type;
	}
	public void setPrd_type(String prd_type) {
		this.prd_type = prd_type;
	}
	public String getPrd_id() {
		return prd_id;
	}
	public void setPrd_id(String prd_id) {
		this.prd_id = prd_id;
	}
	public String getPrd_opt() {
		return prd_opt;
	}
	public void setPrd_opt(String prd_opt) {
		this.prd_opt = prd_opt;
	}
}
