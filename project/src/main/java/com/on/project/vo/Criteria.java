package com.on.project.vo;

public class Criteria {

	private int page; // 페이지
	private int perPageNum; // 페이지당 보여줄 수

	private String keyword; // 키워드별
	private String type; // 타입별

	private String brand; // 브랜드별

	public Criteria() {
		this.page = 1; // 시작페이지 1로 지정
		this.perPageNum = 12; // 한페이지당 12개 상품 조회
	}

	public int getPageStart() { // 추가로 필수 넣어줌
		return (this.page - 1) * perPageNum; // 페이지 시작하는 곳 !!
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {

		if (page <= 0) {
			this.page = 1;
		} else {
			this.page = page;
		}
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {

		this.perPageNum = perPageNum;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

}
