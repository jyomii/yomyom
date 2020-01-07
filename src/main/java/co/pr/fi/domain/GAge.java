package co.pr.fi.domain;

//연령대 
public class GAge {

 // 연령대키값 
 private int ageKey;

 // 연령대 
 private int ageValue;

 public int getAgeKey() {
     return ageKey;
 }

 public void setAgeKey(int ageKey) {
     this.ageKey = ageKey;
 }

 public int getAgeValue() {
     return ageValue;
 }

 public void setAgeValue(int ageValue) {
     this.ageValue = ageValue;
 }

 // GAge 모델 복사
 public void CopyData(GAge param)
 {
     this.ageKey = param.getAgeKey();
     this.ageValue = param.getAgeValue();
 }
}