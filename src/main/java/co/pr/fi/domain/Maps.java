package co.pr.fi.domain;

//지도 
public class Maps {

 // 지도키값 
 private int mapsKey;

 // 모임게시글키값 
 private int postKey;

 // 경로lat 
 private Double lat;

 // 경로lng 
 private Double lng;

 // 마커이름 
 private String markerName;

 // 마커내용 
 private String markerContent;

 // 경로순서 
 private int mapsSeq;

 public int getMapsKey() {
     return mapsKey;
 }

 public void setMapsKey(int mapsKey) {
     this.mapsKey = mapsKey;
 }

 public int getPostKey() {
     return postKey;
 }

 public void setPostKey(int postKey) {
     this.postKey = postKey;
 }

 public Double getLat() {
     return lat;
 }

 public void setLat(Double lat) {
     this.lat = lat;
 }

 public Double getLng() {
     return lng;
 }

 public void setLng(Double lng) {
     this.lng = lng;
 }

 public String getMarkerName() {
     return markerName;
 }

 public void setMarkerName(String markerName) {
     this.markerName = markerName;
 }

 public String getMarkerContent() {
     return markerContent;
 }

 public void setMarkerContent(String markerContent) {
     this.markerContent = markerContent;
 }

 public int getMapsSeq() {
     return mapsSeq;
 }

 public void setMapsSeq(int mapsSeq) {
     this.mapsSeq = mapsSeq;
 }

 // Maps 모델 복사
 public void CopyData(Maps param)
 {
     this.mapsKey = param.getMapsKey();
     this.postKey = param.getPostKey();
     this.lat = param.getLat();
     this.lng = param.getLng();
     this.markerName = param.getMarkerName();
     this.markerContent = param.getMarkerContent();
     this.mapsSeq = param.getMapsSeq();
 }
}