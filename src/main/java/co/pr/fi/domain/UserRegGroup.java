package co.pr.fi.domain;
//모임게시판정보 
public class UserRegGroup {
	private String groupname;
	private String groupcfile;
	private int groupkey;
	
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	public String getGroupcfile() {
		return groupcfile;
	}
	public void setGroupcfile(String groupcfile) {
		this.groupcfile = groupcfile;
	}
	public int getGroupkey() {
		return groupkey;
	}
	public void setGroupkey(int groupkey) {
		this.groupkey = groupkey;
	}
}