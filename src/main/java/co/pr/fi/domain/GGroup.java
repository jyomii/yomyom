package co.pr.fi.domain;

import java.sql.Date;

//모임 
public class GGroup {

 // 모임키값 
 private int groupKey;

 // 모임이름 
 private String groupName;

 // 모임장키값 
 private int userKey;

 // 연령대키값 
 private int ageKey;

 // 모임지역키값 
 private int whereKey;

 // 모임카테고리 
 private int categoryKey;

 // 모임소개 
 private String groupInfo;

 // 대표사진_file 
 private String groupDFile;

 // 대표사진_origin 
 private String groupIdOrigin;

 // 커버사진_file 
 private String groupCFile;

 // 커버사진_origin 
 private String groupCOrigin;

 // 모임공개여부 
 private String groupPrivate;

 // 모임타입 
 private String groupType;

 // 모임 설립일,,
 private Date groupDate;
 
 //모임 상태
 private int groupstatus;
 

 
public int getGroupstatus() {
	return groupstatus;
}

public void setGroupstatus(int groupstatus) {
	this.groupstatus = groupstatus;
}

public int getGroupKey() {
     return groupKey;
 }

 public void setGroupKey(int groupKey) {
     this.groupKey = groupKey;
 }

 public String getGroupName() {
     return groupName;
 }

 public void setGroupName(String groupName) {
     this.groupName = groupName;
 }

 public int getUserKey() {
     return userKey;
 }

 public void setUserKey(int userKey) {
     this.userKey = userKey;
 }

 public int getAgeKey() {
     return ageKey;
 }

 public void setAgeKey(int ageKey) {
     this.ageKey = ageKey;
 }

 public int getWhereKey() {
     return whereKey;
 }

 public void setWhereKey(int whereKey) {
     this.whereKey = whereKey;
 }

 public int getCategoryKey() {
     return categoryKey;
 }

 public void setCategoryKey(int categoryKey) {
     this.categoryKey = categoryKey;
 }

 public String getGroupInfo() {
     return groupInfo;
 }

 public void setGroupInfo(String groupInfo) {
     this.groupInfo = groupInfo;
 }

 public String getGroupDFile() {
     return groupDFile;
 }

 public void setGroupDFile(String groupDFile) {
     this.groupDFile = groupDFile;
 }

 public String getGroupIdOrigin() {
     return groupIdOrigin;
 }

 public void setGroupIdOrigin(String groupIdOrigin) {
     this.groupIdOrigin = groupIdOrigin;
 }

 public String getGroupCFile() {
     return groupCFile;
 }

 public void setGroupCFile(String groupCFile) {
     this.groupCFile = groupCFile;
 }

 public String getGroupCOrigin() {
     return groupCOrigin;
 }

 public void setGroupCOrigin(String groupCOrigin) {
     this.groupCOrigin = groupCOrigin;
 }

 public String getGroupPrivate() {
     return groupPrivate;
 }

 public void setGroupPrivate(String groupPrivate) {
     this.groupPrivate = groupPrivate;
 }

 public String getGroupType() {
     return groupType;
 }

 public void setGroupType(String groupType) {
     this.groupType = groupType;
 }
 
 public Date getGroupDate() {
	return groupDate;
 }

 public void setGroupDate(Date groupDate) {
	this.groupDate = groupDate;
 }
 
 // GGroup 모델 복사
 public void CopyData(GGroup param)
 {
     this.groupKey = param.getGroupKey();
     this.groupName = param.getGroupName();
     this.userKey = param.getUserKey();
     this.ageKey = param.getAgeKey();
     this.whereKey = param.getWhereKey();
     this.categoryKey = param.getCategoryKey();
     this.groupInfo = param.getGroupInfo();
     this.groupDFile = param.getGroupDFile();
     this.groupIdOrigin = param.getGroupIdOrigin();
     this.groupCFile = param.getGroupCFile();
     this.groupCOrigin = param.getGroupCOrigin();
     this.groupPrivate = param.getGroupPrivate();
     this.groupType = param.getGroupType();
     this.groupDate = param.getGroupDate();
     this.groupstatus = param.getGroupstatus();
 }
}