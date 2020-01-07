package co.pr.fi.domain;

//카테고리소분류 
public class GCategory2 {

 // 카테고리소분류키값 
 private int sCategoryKey;

 // 카테고리대분류키값 
 private int dCategoryKey;

 // 카테고리소분류 
 private String sCategoryName;

 public int getSCategoryKey() {
     return sCategoryKey;
 }

 public void setSCategoryKey(int sCategoryKey) {
     this.sCategoryKey = sCategoryKey;
 }

 public int getDCategoryKey() {
     return dCategoryKey;
 }

 public void setDCategoryKey(int dCategoryKey) {
     this.dCategoryKey = dCategoryKey;
 }

 public String getSCategoryName() {
     return sCategoryName;
 }

 public void setSCategoryName(String sCategoryName) {
     this.sCategoryName = sCategoryName;
 }

 // GCategory2 모델 복사
 public void CopyData(GCategory2 param)
 {
     this.sCategoryKey = param.getSCategoryKey();
     this.dCategoryKey = param.getDCategoryKey();
     this.sCategoryName = param.getSCategoryName();
 }
}