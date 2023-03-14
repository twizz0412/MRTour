package com.mrtour.model.product;

public class CarVO {
	private int city_no; // 지역 번호(FK)
	private String car_name; // 차량 이름
	private int car_price; // 렌트 가격
	private String prd_type; // 상품 카테고리(유형)
	private String prd_id; // 상품식별 아이디
	private String prd_opt; // 상품 옵션	
	
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public int getCar_price() {
		return car_price;
	}
	public void setCar_price(int car_price) {
		this.car_price = car_price;
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
