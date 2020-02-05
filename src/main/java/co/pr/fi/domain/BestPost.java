
package co.pr.fi.domain;

import java.time.LocalDateTime;

// 게시글 
public class BestPost {

	// 작성글키값
	private int postKey;

	// 글 제목
	private String postTitle;

	// 글 내용
	private String postContent;

	// 글 작성일
	private LocalDateTime postDate;

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
	
	
	// 좋아요 수
	private int postlike;
	

	//모임 이름
	private String groupName;

	// 작성자 닉네임
	private String groupNickname;



	public int getUserKey() {
		return userKey;
	}

	public void setUserKey(int userKey) {
		this.userKey = userKey;
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

	public LocalDateTime getPostDate() {
		return postDate;
	}

	public void setPostDate(LocalDateTime postDate) {
		this.postDate = postDate;
	}

	public int getGroupKey() {
		return groupKey;
	}

	public void setGroupKey(int groupKey) {
		this.groupKey = groupKey;
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

	public int getPostlike() {
		return postlike;
	}

	public void setPostlike(int postlike) {
		this.postlike = postlike;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getGroupNickname() {
		return groupNickname;
	}

	public void setGroupNickname(String groupNickname) {
		this.groupNickname = groupNickname;
	}

	
	
	

}
