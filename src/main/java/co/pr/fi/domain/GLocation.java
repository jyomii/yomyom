package co.pr.fi.domain;

//지역소분류 
public class GLocation {

 // 지역키값 
 private int locationKey;

 // 지역소분류이름 
 private String sWhere;

 // 지역대분류이름 
 private String dWhere;

 public int getLocationKey() {
     return locationKey;
 }

 public void setLocationKey(int locationKey) {
     this.locationKey = locationKey;
 }

 public String getSWhere() {
     return sWhere;
 }

 public void setSWhere(String sWhere) {
     this.sWhere = sWhere;
 }

 public String getDWhere() {
     return dWhere;
 }

 public void setDWhere(String dWhere) {
     this.dWhere = dWhere;
 }

 // GLocation 모델 복사
 public void CopyData(GLocation param)
 {
     this.locationKey = param.getLocationKey();
     this.sWhere = param.getSWhere();
     this.dWhere = param.getDWhere();
 }
}