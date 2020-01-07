package co.pr.fi.domain;

import java.sql.Date;

//홍보게시판 
public class PrBoard {

 // 홍보게시판키값 
 private int prKey;

 // 유저키값 
 private int userKey;

 // 모임키값 
 private int groupKey;

 // 내용 
 private String content;

 // 작성날짜 
 private Date dateWrite;

 public int getPrKey() {
     return prKey;
 }

 public void setPrKey(int prKey) {
     this.prKey = prKey;
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

 public String getContent() {
     return content;
 }

 public void setContent(String content) {
     this.content = content;
 }

 public Date getDateWrite() {
     return dateWrite;
 }

 public void setDateWrite(Date dateWrite) {
     this.dateWrite = dateWrite;
 }

 // PrBoard 모델 복사
 public void CopyData(PrBoard param)
 {
     this.prKey = param.getPrKey();
     this.userKey = param.getUserKey();
     this.groupKey = param.getGroupKey();
     this.content = param.getContent();
     this.dateWrite = param.getDateWrite();
 }
}