package com.on.project.vo;

public class MemberVo {

	private int midx;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_addr1;
	private String member_addr2;
	private String member_addr3;
	private String member_email;

	public int getMidx() {
		return midx;
	}

	public void setMidx(int midx) {
		this.midx = midx;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_addr1() {
		return member_addr1;
	}

	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}

	public String getMember_addr2() {
		return member_addr2;
	}

	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}

	public String getMember_addr3() {
		return member_addr3;
	}

	public void setMember_addr3(String member_addr3) {
		this.member_addr3 = member_addr3;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	@Override
	public String toString() {
		return "MemberVo [midx=" + midx + ", member_id=" + member_id + ", member_pw=" + member_pw + ", member_name="
				+ member_name + ", member_addr1=" + member_addr1 + ", member_addr2=" + member_addr2 + ", member_addr3="
				+ member_addr3 + ", member_email=" + member_email + "]";
	}

}
