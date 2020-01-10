package co.pr.fi.domain;

import java.sql.Date;

//방문자수 집계 
public class Visit {

 // id
 private String id;

 // visitdate 
 private Date visitdate;

 public String getId() {
     return id;
 }

 public void setIp(String ip) {
     this.id = id;
 }

 public Date getVisitdate() {
     return visitdate;
 }

 public void setVisitdate(Date visitdate) {
     this.visitdate = visitdate;
 }

 // Visit 모델 복사
 public void CopyData(Visit param)
 {
     this.id = param.getId();
     this.visitdate = param.getVisitdate();
 }
}
