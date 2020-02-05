package co.pr.fi.domain;
//지도 
public class Maps {

 // 모임게시글키값 
 private int postkey;

 // lat 
 private Double lat;

 // lng 
 private Double lng;

 // 마커/선 여부 
 private String mapoption;

 // 경로순서 
 private int mapseq;
 
 private int maplevel;
 
 private Double maplat;
 private Double maplng;
 private int mapdetailseq;
 
 
 
 


 public int getMapdetailseq() {
    return mapdetailseq;
 }

 public void setMapdetailseq(int mapdetailseq) {
    this.mapdetailseq = mapdetailseq;
 }
 
 
 


@Override
public String toString() {
	return "Maps [postkey=" + postkey + ", lat=" + lat + ", lng=" + lng + ", mapoption=" + mapoption + ", mapseq="
			+ mapseq + ", maplevel=" + maplevel + ", maplat=" + maplat + ", maplng=" + maplng + "]";
}

public int getMaplevel() {
	return maplevel;
}

public void setMaplevel(int maplevel) {
	this.maplevel = maplevel;
}

public Double getMaplat() {
	return maplat;
}

public void setMaplat(Double maplat) {
	this.maplat = maplat;
}

public Double getMaplng() {
	return maplng;
}

public void setMaplng(Double maplng) {
	this.maplng = maplng;
}


 public int getPostkey() {
     return postkey;
 }

 public void setPostkey(int postkey) {
     this.postkey = postkey;
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

 public String getMapoption() {
     return mapoption;
 }

 public void setMapoption(String mapoption) {
     this.mapoption = mapoption;
 }

 public int getMapseq() {
     return mapseq;
 }

 public void setMapseq(int mapseq) {
     this.mapseq = mapseq;
 }

}