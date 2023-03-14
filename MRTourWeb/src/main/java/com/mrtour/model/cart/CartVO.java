package com.mrtour.model.cart;

import java.util.List;

public class CartVO {

	private String prd_type; // 상품 카테고리(유형)(FK)
	private String prd_name; // 상품명
	private String prd_opt; // 상품 옵션	
	private int prd_price; // 상품 가격
	private int prd_sum; // 가격 합계

	private String member_id; // 회원 아이디(FK)
	private String prd_id; // 상품 코드(FK)
	private int buy_quantity; // 주문 수량
	private int cart_no; // 장바구니 고유번호 
	
	private List<String> cartPayList; // 장바구니 리스트

	public String getPrd_type() {
		return prd_type;
	}

	public void setPrd_type(String prd_type) {
		this.prd_type = prd_type;
	}

	public String getPrd_name() {
		return prd_name;
	}

	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}

	public String getPrd_opt() {
		return prd_opt;
	}

	public void setPrd_opt(String prd_opt) {
		this.prd_opt = prd_opt;
	}

	public int getPrd_price() {
		return prd_price;
	}

	public void setPrd_price(int prd_price) {
		this.prd_price = prd_price;
	}

	public int getPrd_sum() {
		return prd_sum;
	}

	public void setPrd_sum(int prd_sum) {
		this.prd_sum = prd_sum;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getPrd_id() {
		return prd_id;
	}

	public void setPrd_id(String prd_id) {
		this.prd_id = prd_id;
	}

	public int getBuy_quantity() {
		return buy_quantity;
	}

	public void setBuy_quantity(int buy_quantity) {
		this.buy_quantity = buy_quantity;
	}

	public int getCart_no() {
		return cart_no;
	}

	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}

	public List<String> getCartPayList() {
		return cartPayList;
	}

	public void setCartPayList(List<String> cartPayList) {
		this.cartPayList = cartPayList;
	}
	
}
