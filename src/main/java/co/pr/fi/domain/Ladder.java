package co.pr.fi.domain;

//사다리타기 
public class Ladder {

 // 모임게시글키값 
 private int postKey;

 // 사다리타기키값 
 private int ladderKey;

 // 사다리타기 내용 
 private String ladderContent;

 public int getPostKey() {
     return postKey;
 }

 public void setPostKey(int postKey) {
     this.postKey = postKey;
 }

 public int getLadderKey() {
     return ladderKey;
 }

 public void setLadderKey(int ladderKey) {
     this.ladderKey = ladderKey;
 }

 public String getLadderContent() {
     return ladderContent;
 }

 public void setLadderContent(String ladderContent) {
     this.ladderContent = ladderContent;
 }

 // Ladder 모델 복사
 public void CopyData(Ladder param)
 {
     this.postKey = param.getPostKey();
     this.ladderKey = param.getLadderKey();
     this.ladderContent = param.getLadderContent();
 }
}