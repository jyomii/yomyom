package co.pr.fi.domain;

import java.sql.Date;

//알람내역 
public class UserMessage {

 // 메세지키값 
 private int mgKey;

 // 종류 
 private String mgSort; //N : 공지사항 , D : 일반 쪽지

 // 내용 
 private String mgContent;

 // 날짜 
 private Date mgDate;

 // 받는유저키값 
 private int mgReceive;

 // 보낸유저키값 
 private int mgSend;

 
 
 @Override
public String toString() {
	return "UserMessage [mgKey=" + mgKey + ", mgSort=" + mgSort + ", mgContent=" + mgContent + ", mgDate=" + mgDate
			+ ", mgReceive=" + mgReceive + ", mgSend=" + mgSend + ", getMgKey()=" + getMgKey() + ", getMgSort()="
			+ getMgSort() + ", getMgContent()=" + getMgContent() + ", getMgDate()=" + getMgDate() + ", getMgReceive()="
			+ getMgReceive() + ", getMgSend()=" + getMgSend() + ", getClass()=" + getClass() + ", hashCode()="
			+ hashCode() + ", toString()=" + super.toString() + "]";
}

public int getMgKey() {
     return mgKey;
 }

 public void setMgKey(int mgKey) {
     this.mgKey = mgKey;
 }

 public String getMgSort() {
     return mgSort;
 }

 public void setMgSort(String mgSort) {
     this.mgSort = mgSort;
 }

 public String getMgContent() {
     return mgContent;
 }

 public void setMgContent(String mgContent) {
     this.mgContent = mgContent;
 }

 public Date getMgDate() {
     return mgDate;
 }

 public void setMgDate(Date mgDate) {
     this.mgDate = mgDate;
 }

 public int getMgReceive() {
     return mgReceive;
 }

 public void setMgReceive(int mgReceive) {
     this.mgReceive = mgReceive;
 }

 public int getMgSend() {
     return mgSend;
 }

 public void setMgSend(int mgSend) {
     this.mgSend = mgSend;
 }

 // UserMessage 모델 복사
 public void CopyData(UserMessage param)
 {
     this.mgKey = param.getMgKey();
     this.mgSort = param.getMgSort();
     this.mgContent = param.getMgContent();
     this.mgDate = param.getMgDate();
     this.mgReceive = param.getMgReceive();
     this.mgSend = param.getMgSend();
 }
}