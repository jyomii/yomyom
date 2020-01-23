package co.pr.fi.domain;

//모임참여자 
public class GGroupMember {

 // 모임키값 
 private int groupKey;

 // 유저키값 
 private int userKey;

 // 닉네임 
 private String groupNickname;

 // 유저등급 
 private int userGrade; //일반: 0 // 모임장: 1 // 모임가입예정 : -1
 
 // 만들어보자,,,,,,
 // 유저 프사
 private String profileFile;
 
 // 유저 프사 원본
 private String profileOrigin;
 
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

 public String getGroupNickname() {
     return groupNickname;
 }

 public void setGroupNickname(String groupNickname) {
     this.groupNickname = groupNickname;
 }

 public int getUserGrade() {
     return userGrade;
 }

 public void setUserGrade(int userGrade) {
     this.userGrade = userGrade;
 }

 public String getProfileFile() {
	return profileFile;
}

public void setProfileFile(String profileFile) {
	this.profileFile = profileFile;
}

public String getProfileOrigin() {
	return profileOrigin;
}

public void setProfileOrigin(String profileOrigin) {
	this.profileOrigin = profileOrigin;
}

// GGroupMember 모델 복사
 public void CopyData(GGroupMember param)
 {
     this.groupKey = param.getGroupKey();
     this.userKey = param.getUserKey();
     this.groupNickname = param.getGroupNickname();
     this.userGrade = param.getUserGrade();
     this.profileFile = param.getProfileFile();
     this.profileOrigin = param.getProfileOrigin();
 }
}