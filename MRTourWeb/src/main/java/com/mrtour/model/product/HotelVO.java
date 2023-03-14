package com.mrtour.model.product;

public class HotelVO {
	private int city_no; // 지역 번호(FK)
	private String room_type; // 방 타입
	private String hotel_name; // 호텔 이름
	private int hotel_price; // 숙박 가격
	private String prd_type; // 상품 카테고리(유형)
	private String prd_id; // 상품식별 아이디
	private String prd_opt; // 상품 옵션	
	
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public String getHotel_name() {
		return hotel_name;
	}
	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}
	public int getHotel_price() {
		return hotel_price;
	}
	public void setHotel_price(int hotel_price) {
		this.hotel_price = hotel_price;
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
