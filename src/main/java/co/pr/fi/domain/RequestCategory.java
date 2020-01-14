package co.pr.fi.domain;

public class RequestCategory {

	// 요청키
	private int requestkey;

	// 대분류이름
	private String dname;

	// 소분류이름
	private String sname;

	// 유저키값
	private int userkey;

	public int getRequestkey() {
		return requestkey;
	}

	public void setRequestkey(int requestkey) {
		this.requestkey = requestkey;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public int getUserkey() {
		return userkey;
	}

	public void setUserkey(int userkey) {
		this.userkey = userkey;
	}

	// Requestcategory 모델 복사
	public void CopyData(RequestCategory param) {
		this.requestkey = param.getRequestkey();
		this.dname = param.getDname();
		this.sname = param.getSname();
		this.userkey = param.getUserkey();
	}
}
