package co.pr.fi.domain;

import java.sql.Date;
import java.time.LocalDateTime;

//알람내역 
public class UserMessage {

 // 메세지키값 
 private int mgKey;

 // 종류 
 private String mgSort; //N : 공지사항 , D : 일반 쪽지

 // 내용 
 private String mgContent;

 // 날짜 
 private LocalDateTime mgDate;

 // 받는유저키값 
 private int mgReceive;

 // 보낸유저키값 
 private int mgSend;
 
 private Date checkDate;
 

 
 
 public LocalDateTime getMgDate() {
	return mgDate;
}

public void setMgDate(LocalDateTime mgDate) {
	this.mgDate = mgDate;
}

public Date getCheckDate() {
	return checkDate;
}

public void setCheckDate(Date checkDate) {
	this.checkDate = checkDate;
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


}