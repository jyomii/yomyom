package co.pr.fi.domain;

//투표 
public class Vote {

 // 투표키값 
 private int voteKey;

 // 모임게시글키값 
 private int postKey;

 // 투표내용1 
 private String voteContent1;

 // 투표내용2 
 private String voteContent2;

 // 투표내용3 
 private String voteContent3;

 // 투표내용4 
 private String voteContent4;

 // 투표내용5 
 private String voteContent5;

 public int getVoteKey() {
     return voteKey;
 }

 public void setVoteKey(int voteKey) {
     this.voteKey = voteKey;
 }

 public int getPostKey() {
     return postKey;
 }

 public void setPostKey(int postKey) {
     this.postKey = postKey;
 }

 public String getVoteContent1() {
     return voteContent1;
 }

 public void setVoteContent1(String voteContent1) {
     this.voteContent1 = voteContent1;
 }

 public String getVoteContent2() {
     return voteContent2;
 }

 public void setVoteContent2(String voteContent2) {
     this.voteContent2 = voteContent2;
 }

 public String getVoteContent3() {
     return voteContent3;
 }

 public void setVoteContent3(String voteContent3) {
     this.voteContent3 = voteContent3;
 }

 public String getVoteContent4() {
     return voteContent4;
 }

 public void setVoteContent4(String voteContent4) {
     this.voteContent4 = voteContent4;
 }

 public String getVoteContent5() {
     return voteContent5;
 }

 public void setVoteContent5(String voteContent5) {
     this.voteContent5 = voteContent5;
 }

 // Vote 모델 복사
 public void CopyData(Vote param)
 {
     this.voteKey = param.getVoteKey();
     this.postKey = param.getPostKey();
     this.voteContent1 = param.getVoteContent1();
     this.voteContent2 = param.getVoteContent2();
     this.voteContent3 = param.getVoteContent3();
     this.voteContent4 = param.getVoteContent4();
     this.voteContent5 = param.getVoteContent5();
 }
}