package co.pr.fi.domain;

//모임게시글좋아요 
public class PostLike {

 // 모임게시글키 
 private int postKey;

 // 유저키값 
 private int userKey;

 // 모임키값 
 private int groupKey;

 public int getPostKey() {
     return postKey;
 }

 public void setPostKey(int postKey) {
     this.postKey = postKey;
 }

 public int getUserKey() {
     return userKey;
 }

 public void setUserKey(int userKey) {
     this.userKey = userKey;
 }

 public int getGroupKey() {
     return groupKey;
 }

 public void setGroupKey(int groupKey) {
     this.groupKey = groupKey;
 }

 // PostLike 모델 복사
 public void CopyData(PostLike param)
 {
     this.postKey = param.getPostKey();
     this.userKey = param.getUserKey();
     this.groupKey = param.getGroupKey();
 }
}
