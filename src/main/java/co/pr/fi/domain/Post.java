package co.pr.fi.domain;

import java.sql.Date;

//모임게시글 
public class Post {

 // 모임게시글키값 
 private int postKey;

 // 제목 
 private String postTitle;

 // 내용 
 private String postContent;

 // 작성날짜 
 private Date postDate;

 // 모임키값 
 private int groupKey;

 // 유저키값 
 private int userKey;

 // 댓글허용여부 
 private String postOptionReply;

 // 검색허용여부 
 private String postOptionSearch;

 // 모임게시판키값 
 private int boardKey;

 // 조회수 
 private int postReadcount;

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

 public Date getPostDate() {
     return postDate;
 }

 public void setPostDate(Date postDate) {
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

 // Post 모델 복사
 public void CopyData(Post param)
 {
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
 }
}