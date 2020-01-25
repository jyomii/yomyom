package co.pr.fi.domain;

// 모임장이 기입하는 가입 양식
public class JoinQuest {
	private int questKey;		// 가입양식키
	private int groupKey;		// 모임키
	private String quest1;		// 질문 1
	private String quest2;		// 질문 2
	private String quest3;		// 질문 3
	private String quest4;		// 질문 4
	private String quest5;		// 질문 5
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
	public String getQuest1() {
		return quest1;
	}
	public void setQuest1(String quest1) {
		this.quest1 = quest1;
	}
	public String getQuest2() {
		return quest2;
	}
	public void setQuest2(String quest2) {
		this.quest2 = quest2;
	}
	public String getQuest3() {
		return quest3;
	}
	public void setQuest3(String quest3) {
		this.quest3 = quest3;
	}
	public String getQuest4() {
		return quest4;
	}
	public void setQuest4(String quest4) {
		this.quest4 = quest4;
	}
	public String getQuest5() {
		return quest5;
	}
	public void setQuest5(String quest5) {
		this.quest5 = quest5;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	// JoinQuest 모델 복사
	public void CopyData (JoinQuest param) {
		this.questKey = param.getQuestKey();
		this.groupKey = param.getGroupKey();
		this.quest1 = param.getQuest1();
		this.quest2 = param.getQuest2();
		this.quest3 = param.getQuest3();
		this.quest4 = param.getQuest4();
		this.quest5 = param.getQuest5();
		this.introduce = param.getIntroduce();
	}
}
