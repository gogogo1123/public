package com.on.project.vo;

public class CartVo {

	
	
	private int cart_id;
	private String member_id;
	private int product_code;
	private int amount;
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "CartVo [cart_id=" + cart_id + ", member_id=" + member_id + ", product_code=" + product_code
				+ ", amount=" + amount + "]";
	}
	
	
	
	
	
	
	
	
	
	
}
