
package co.pr.fi.domain;


// 게시글 
public class Post {
	private int rownum;
	
	private int rnum;
	// 작성글키값
	private int postKey;

	// 글 제목
	private String postTitle;

	// 글 내용
	private String postContent;

	// 글 작성일
	private String postDate;

	// 모임키
	private int groupKey;

	// 유저키
	private int userKey;

	// 댓글 허용 여부
	private String postOptionReply;

	// 검색 허용 여부
	private String postOptionSearch;

	// 게시판 키값
	private int boardKey;
	
	
	// 글 조회수
	private int postReadcount;

	// 댓글수
	private int replyCount;
	
	// 댓글 내용
	private String commentContent;
	
	// 댓글 작성일
	private String commentDate;
	
	// 좋아요 수
	private int postlike;
	

	//모임 이름
	private String groupName;

	// 작성자 프사
	private String profileFile;
	
	// 작성자 닉네임
	private String groupNickname;

	
	private String cstartdate;
	private String startdate;
	private String cenddate;
	private String cmoney;
	private int maxperson;
	private String location;
	private int currentperson;
	private String joinbtn;
	private String cmoneytype;
	private String time;
	private String minute;
	private String boardtype;
	
	public String getBoardtype() {
		return boardtype;
	}

	public void setBoardtype(String boardtype) {
		this.boardtype = boardtype;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getMinute() {
		return minute;
	}

	public void setMinute(String minute) {
		this.minute = minute;
	}

	public String getCmoneytype() {
		return cmoneytype;
	}

	public void setCmoneytype(String cmoneytype) {
		this.cmoneytype = cmoneytype;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

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

	public String getProfileFile() {
		return profileFile;
	}

	public void setProfileFile(String profileFile) {
		this.profileFile = profileFile;
	}

	public String getGroupNickname() {
		return groupNickname;
	}

	public void setGroupNickname(String groupNickname) {
		this.groupNickname = groupNickname;
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
		this.groupNickname = param.getGroupNickname();
		this.profileFile = param.getProfileFile();
	}

}
