package co.pr.fi.domain;
// 모임에 가입하려는 회원이 가입양식에 맞게 쓴 글 
public class JoinAnswer {
	private int questKey;		// 가입양식키
	private int groupKey;		// 모임키
	private int userKey;		// 유저키
	private String answer1;		// 답변 1
	private String answer2;		// 답변 2
	private String answer3;		// 답변 3
	private String answer4;		// 답변 4
	private String answer5;		// 답변 5
	private String introduce;	// 자기소개 
	
	public int getQuestKey() {
		return questKey;
	}
	public void setQuestKey(int questKey) {
		this.questKey = questKey;
	}
	public int getGroupKey() {
		return groupKey;
	}
	public void setGroupKey(int groupKey) {
		this.groupKey = groupKey;
	}
	public int getUserKey() {
		return userKey;
	}
	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}
	public String getAnswer1() {
		return answer1;
	}
	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}
	public String getAnswer2() {
		return answer2;
	}
	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}
	public String getAnswer3() {
		return answer3;
	}
	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}
	public String getAnswer4() {
		return answer4;
	}
	public void setAnswer4(String answer4) {
		this.answer4 = answer4;
	}
	public String getAnswer5() {
		return answer5;
	}
	public void setAnswer5(String answer5) {
		this.answer5 = answer5;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	// JoinAnswer 모델 복사
	public void CopyData (JoinAnswer param) {
		this.questKey = param.getQuestKey();
		this.groupKey = param.getGroupKey();
		this.userKey = param.getUserKey();
		this.answer1 = param.getAnswer1();
		this.answer2 = param.getAnswer2();
		this.answer3 = param.getAnswer3();
		this.answer4 = param.getAnswer4();
		this.answer5 = param.getAnswer5();
		this.introduce = param.getIntroduce();
	}
}
