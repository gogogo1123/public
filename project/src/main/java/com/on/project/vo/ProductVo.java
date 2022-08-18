package com.on.project.vo;

import org.springframework.web.multipart.MultipartFile;

public class ProductVo {

	private int product_code;
	private String product_name;
	private int product_amount;
	private int product_price;
	private String product_brand;

	public String getProduct_brand() {
		return product_brand;
	}

	public void setProduct_brand(String product_brand) {
		this.product_brand = product_brand;
	}

	public int getProduct_code() {
		return product_code;
	}

	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_amount() {
		return product_amount;
	}

	public void setProduct_amount(int product_amount) {
		this.product_amount = product_amount;
	}

	@Override
	public String toString() {
		return "ProductVo [product_code=" + product_code + ", product_name=" + product_name + ", product_amount="
				+ product_amount + ", product_price=" + product_price + ", file1=" + file1 + ", filename=" + filename
				+ "]";
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public MultipartFile getFile1() {
		return file1;
	}

	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	private MultipartFile file1;
	private String filename;
}
