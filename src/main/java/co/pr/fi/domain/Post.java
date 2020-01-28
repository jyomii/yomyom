
package co.pr.fi.domain;

//紐⑥엫寃뚯떆湲� 
public class Post {
	private int rownum;
	// 紐⑥엫寃뚯떆湲��궎媛�
	private int postKey;

	// �젣紐�
	private String postTitle;

	// �궡�슜
	private String postContent;

	// �옉�꽦�궇吏�
	private String postDate;

	// 紐⑥엫�궎媛�
	private int groupKey;

	// �쑀���궎媛�
	private int userKey;

	// �뙎湲��뿀�슜�뿬遺�
	private String postOptionReply;

	// 寃��깋�뿀�슜�뿬遺�
	private String postOptionSearch;

	// 紐⑥엫寃뚯떆�뙋�궎媛�
	private int boardKey;

	// 議고쉶�닔
	private int postReadcount;

	// �뙎湲��닔
	private int replyCount;
	
	// �뙎湲� �궡�슜
	private String commentContent;
	
	// �뙎湲� �옉�꽦�씪
	private String commentDate;
	
	// 醫뗭븘�슂 �닔
	private int postlike;
	
	private String cstartdate;
	private String cenddate;
	private String cmoney;
	private int maxperson;
	private String location;
	private int currentperson;
	private String joinbtn;
	
	public String getJoinbtn() {
		return joinbtn;
	}

	public void setJoinbtn(String joinbtn) {
		this.joinbtn = joinbtn;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
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

	public int getMaxperson() {
		return maxperson;
	}

	public void setMaxperson(int maxperson) {
		this.maxperson = maxperson;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getCurrentperson() {
		return currentperson;
	}

	public void setCurrentperson(int currentperson) {
		this.currentperson = currentperson;
	}

	public int getPostKey() {
		return postKey;
	}

	public void setPostKey(int postKey) {
		this.postKey = postKey;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}

	public int getGroupKey() {
		return groupKey;
	}

	public void setGroupKey(int groupKey) {
		this.groupKey = groupKey;
	}

	public int getUserKey() {
		return userKey;
	}

	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}

	public String getPostOptionReply() {
		return postOptionReply;
	}

	public void setPostOptionReply(String postOptionReply) {
		this.postOptionReply = postOptionReply;
	}

	public String getPostOptionSearch() {
		return postOptionSearch;
	}

	public void setPostOptionSearch(String postOptionSearch) {
		this.postOptionSearch = postOptionSearch;
	}

	public int getBoardKey() {
		return boardKey;
	}

	public void setBoardKey(int boardKey) {
		this.boardKey = boardKey;
	}

	public int getPostReadcount() {
		return postReadcount;
	}

	public void setPostReadcount(int postReadcount) {
		this.postReadcount = postReadcount;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	
	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public int getPostlike() {
		return postlike;
	}

	public void setPostlike(int postlike) {
		this.postlike = postlike;
	}

	// Post 紐⑤뜽 蹂듭궗
	public void CopyData(Post param) {
		this.postKey = param.getPostKey();
		this.postTitle = param.getPostTitle();
		this.postContent = param.getPostContent();
		this.postDate = param.getPostDate();
		this.groupKey = param.getGroupKey();
		this.userKey = param.getUserKey();
		this.postOptionReply = param.getPostOptionReply();
		this.postOptionSearch = param.getPostOptionSearch();
		this.boardKey = param.getBoardKey();
		this.postReadcount = param.getPostReadcount();
		this.replyCount = param.getReplyCount();
		this.commentContent = param.getCommentContent();
		this.commentDate = param.getCommentDate();
		this.postlike = param.getPostlike();
	}

}
