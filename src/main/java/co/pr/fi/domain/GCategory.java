package co.pr.fi.domain;

//카테고리 
public class GCategory {

 // 카테고리대분류키값 
 private int dCategoryKey;

 // 카테고리이름 
 private String dCategoryName;

 public int getDCategoryKey() {
     return dCategoryKey;
 }

 public void setDCategoryKey(int dCategoryKey) {
     this.dCategoryKey = dCategoryKey;
 }

 public String getDCategoryName() {
     return dCategoryName;
 }

 public void setDCategoryName(String dCategoryName) {
     this.dCategoryName = dCategoryName;
 }

 // GCategory 모델 복사
 public void CopyData(GCategory param)
 {
     this.dCategoryKey = param.getDCategoryKey();
     this.dCategoryName = param.getDCategoryName();
 }
}