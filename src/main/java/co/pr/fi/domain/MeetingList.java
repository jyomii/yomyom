package co.pr.fi.domain;

public class MeetingList {
	private int rownum;
	private int postkey;
	private String posttitle;
	private String postdate;
	private int userkey;
	private int groupkey;
	private int boardkey;
	private String cstartdate;
	private String cenddate;
	private String cmoney;
	private int maxperson;
	private String location;
	private int currentperson;
	
	public int getCurrentperson() {
		return currentperson;
	}
	public void setCurrentperson(int currentperson) {
		this.currentperson = currentperson;
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getMaxperson() {
		return maxperson;
	}
	public void setMaxperson(int maxperson) {
		this.maxperson = maxperson;
	}
	public int getPostkey() {
		return postkey;
	}
	public void setPostkey(int postkey) {
		this.postkey = postkey;
	}
	public String getPosttitle() {
		return posttitle;
	}
	public void setPosttitle(String posttitle) {
		this.posttitle = posttitle;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	public int getUserkey() {
		return userkey;
	}
	public void setUserkey(int userkey) {
		this.userkey = userkey;
	}
	public int getGroupkey() {
		return groupkey;
	}
	public void setGroupkey(int groupkey) {
		this.groupkey = groupkey;
	}
	public int getBoardkey() {
		return boardkey;
	}
	public void setBoardkey(int boardkey) {
		this.boardkey = boardkey;
	}
	public String getCstartdate() {
		return cstartdate;
	}
	public void setCstartdate(String cstartdate) {
		this.cstartdate = cstartdate;
	}
	public String getCenddate() {
		return cenddate;
	}
	public void setCenddate(String cenddate) {
		this.cenddate = cenddate;
	}
	public String getCmoney() {
		return cmoney;
	}
	public void setCmoney(String cmoney) {
		this.cmoney = cmoney;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	

}
