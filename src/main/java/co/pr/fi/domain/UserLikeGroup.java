package co.pr.fi.domain;

//즐겨찾기한모임 
public class UserLikeGroup {

 // 즐겨찾기한모임키값 
 private int userLikeGroupKey;

 // 유저키값 
 private int userKey;

 // 모임키값 
 private int groupKey;
 
 private String groupName;
 
 

 public String getGroupName() {
	return groupName;
}

public void setGroupName(String groupName) {
	this.groupName = groupName;
}

public int getUserLikeGroupKey() {
     return userLikeGroupKey;
 }

 public void setUserLikeGroupKey(int userLikeGroupKey) {
     this.userLikeGroupKey = userLikeGroupKey;
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

 // UserLikeGroup 모델 복사
 public void CopyData(UserLikeGroup param)
 {
     this.userLikeGroupKey = param.getUserLikeGroupKey();
     this.userKey = param.getUserKey();
     this.groupKey = param.getGroupKey();
 }
}
