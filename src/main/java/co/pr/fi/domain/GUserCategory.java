package co.pr.fi.domain;

//관심카테고리 
public class GUserCategory {

 // 유저키값 
 private int userKey;

 // 카테고리키값 
 private int categoryKey;

 public int getUserKey() {
     return userKey;
 }

 public void setUserKey(int userKey) {
     this.userKey = userKey;
 }

 public int getCategoryKey() {
     return categoryKey;
 }

 public void setCategoryKey(int categoryKey) {
     this.categoryKey = categoryKey;
 }

 // GUserCategory 모델 복사
 public void CopyData(GUserCategory param)
 {
     this.userKey = param.getUserKey();
     this.categoryKey = param.getCategoryKey();
 }
}