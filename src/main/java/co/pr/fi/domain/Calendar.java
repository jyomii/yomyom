package co.pr.fi.domain;

import java.sql.Date;

//일정 
public class Calendar {

 // 시작날짜 
 private Date cStartDate;

 // 종료날짜 
 private Date cEndDate;

 // 회비 
 private int cMoney;

 // 모임게시글키값 
 private int postKey;

 // 모임장소 
 private int groupLocation;

 // 모임장소세부 
 private int groupLocationDetail;

 public Date getCStartDate() {
     return cStartDate;
 }

 public void setCStartDate(Date cStartDate) {
     this.cStartDate = cStartDate;
 }

 public Date getCEndDate() {
     return cEndDate;
 }

 public void setCEndDate(Date cEndDate) {
     this.cEndDate = cEndDate;
 }

 public int getCMoney() {
     return cMoney;
 }

 public void setCMoney(int cMoney) {
     this.cMoney = cMoney;
 }

 public int getPostKey() {
     return postKey;
 }

 public void setPostKey(int postKey) {
     this.postKey = postKey;
 }

 public int getGroupLocation() {
     return groupLocation;
 }

 public void setGroupLocation(int groupLocation) {
     this.groupLocation = groupLocation;
 }

 public int getGroupLocationDetail() {
     return groupLocationDetail;
 }

 public void setGroupLocationDetail(int groupLocationDetail) {
     this.groupLocationDetail = groupLocationDetail;
 }

 // Calendar 모델 복사
 public void CopyData(Calendar param)
 {
     this.cStartDate = param.getCStartDate();
     this.cEndDate = param.getCEndDate();
     this.cMoney = param.getCMoney();
     this.postKey = param.getPostKey();
     this.groupLocation = param.getGroupLocation();
     this.groupLocationDetail = param.getGroupLocationDetail();
 }
}
