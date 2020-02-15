package co.pr.fi.domain;

public class Shortschedule {

	private String posttitle;
	private String startdate;
	private String location;
	private String groupname;
	private int postkey;
	private int groupkey;
	
	
	public int getGroupkey() {
		return groupkey;
	}
	public void setGroupkey(int groupkey) {
		this.groupkey = groupkey;
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
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	

}
