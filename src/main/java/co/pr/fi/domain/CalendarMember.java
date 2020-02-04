package co.pr.fi.domain;

//일정참여자 
public class CalendarMember {

	
	
 // 유저키값 
 private int userKey;

 // 모임게시글키값 
 private int postKey;

 // 모임키값 
 private int groupKey;

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

 public int getGroupKey() {
     return groupKey;
 }

 public void setGroupKey(int groupKey) {
     this.groupKey = groupKey;
 }

 // CalendarMember 모델 복사
 public void CopyData(CalendarMember param)
 {
     this.userKey = param.getUserKey();
     this.postKey = param.getPostKey();
     this.groupKey = param.getGroupKey();
 }
}