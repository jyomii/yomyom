package co.pr.fi.domain;

import java.sql.Date;

//일정 
public class CalendarList {

	private int rownum;
	// 시작날짜
	private Date cStartDate;

	private String startdate;

	// 종료날짜
	private Date cEndDate;

	// 회비
	private int cMoney;

	// 모임게시글키값
	private int postKey;

	private int maxperson;
	// 모임장소
	private int groupLocation;

	// 모임장소세부
	private int groupLocationDetail;

	private String cmoneytype;

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public Date getcStartDate() {
		return cStartDate;
	}

	public void setcStartDate(Date cStartDate) {
		this.cStartDate = cStartDate;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public Date getcEndDate() {
		return cEndDate;
	}

	public void setcEndDate(Date cEndDate) {
		this.cEndDate = cEndDate;
	}

	public int getcMoney() {
		return cMoney;
	}

	public void setcMoney(int cMoney) {
		this.cMoney = cMoney;
	}

	public int getPostKey() {
		return postKey;
	}

	public void setPostKey(int postKey) {
		this.postKey = postKey;
	}

	public int getMaxperson() {
		return maxperson;
	}

	public void setMaxperson(int maxperson) {
		this.maxperson = maxperson;
	}

	public int getGroupLocation() {
		return groupLocation;
	}

	public void setGroupLocation(int groupLocation) {
		this.groupLocation = groupLocation;
	}

	public int getGroupLocationDetail() {
		return groupLocationDetail;
	}

	public void setGroupLocationDetail(int groupLocationDetail) {
		this.groupLocationDetail = groupLocationDetail;
	}

	public String getCmoneytype() {
		return cmoneytype;
	}

	public void setCmoneytype(String cmoneytype) {
		this.cmoneytype = cmoneytype;
	}

// Calendar 모델 복사
	public void CopyData(CalendarList param) {
		this.cStartDate = param.getcStartDate();
		this.cEndDate = param.getcEndDate();
		this.cMoney = param.getcMoney();
		this.postKey = param.getPostKey();
		this.groupLocation = param.getGroupLocation();
		this.groupLocationDetail = param.getGroupLocationDetail();
	}
}
