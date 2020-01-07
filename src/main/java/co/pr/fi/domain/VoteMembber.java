package co.pr.fi.domain;

//투표참여자 
public class VoteMembber {

 // 투표참여키값 
 private int voteMemberKey;

 // 유저키값 
 private int userKey;

 // 투표키값 
 private int voteKey;

 // 투표내용 
 private int checkVote;

 // 모임키값 
 private int groupKey;

 public int getVoteMemberKey() {
     return voteMemberKey;
 }

 public void setVoteMemberKey(int voteMemberKey) {
     this.voteMemberKey = voteMemberKey;
 }

 public int getUserKey() {
     return userKey;
 }

 public void setUserKey(int userKey) {
     this.userKey = userKey;
 }

 public int getVoteKey() {
     return voteKey;
 }

 public void setVoteKey(int voteKey) {
     this.voteKey = voteKey;
 }

 public int getCheckVote() {
     return checkVote;
 }

 public void setCheckVote(int checkVote) {
     this.checkVote = checkVote;
 }

 public int getGroupKey() {
     return groupKey;
 }

 public void setGroupKey(int groupKey) {
     this.groupKey = groupKey;
 }

 // VoteMembber 모델 복사
 public void CopyData(VoteMembber param)
 {
     this.voteMemberKey = param.getVoteMemberKey();
     this.userKey = param.getUserKey();
     this.voteKey = param.getVoteKey();
     this.checkVote = param.getCheckVote();
     this.groupKey = param.getGroupKey();
 }
}