package co.pr.fi.domain;

//유저신고목록 
public class UserPolice {

 // 신고키값 
 private int policeKey;

 // 신고한유저키값 
 private int userKey;

 // 글 종류 
 private String policeBoardSort;

 // 글 번호 
 private int policeNumber;

 // 신고종류 
 private int policeSort;

 public int getPoliceKey() {
     return policeKey;
 }

 public void setPoliceKey(int policeKey) {
     this.policeKey = policeKey;
 }

 public int getUserKey() {
     return userKey;
 }

 public void setUserKey(int userKey) {
     this.userKey = userKey;
 }

 public String getPoliceBoardSort() {
     return policeBoardSort;
 }

 public void setPoliceBoardSort(String policeBoardSort) {
     this.policeBoardSort = policeBoardSort;
 }

 public int getPoliceNumber() {
     return policeNumber;
 }

 public void setPoliceNumber(int policeNumber) {
     this.policeNumber = policeNumber;
 }

 public int getPoliceSort() {
     return policeSort;
 }

 public void setPoliceSort(int policeSort) {
     this.policeSort = policeSort;
 }

 // UserPolice 모델 복사
 public void CopyData(UserPolice param)
 {
     this.policeKey = param.getPoliceKey();
     this.userKey = param.getUserKey();
     this.policeBoardSort = param.getPoliceBoardSort();
     this.policeNumber = param.getPoliceNumber();
     this.policeSort = param.getPoliceSort();
 }
}