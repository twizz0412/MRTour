package com.mrtour.model.city;

public class CityVO {
	private int city_no; // 지역번호(FK)
	private String city_name; // 지역명
	
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	
}
