package co.pr.fi.domain;
//모임게시판정보 
public class GGroupBoard {

 // 모임게시판키값 
 private int boardKey;

 // 모임키값 
 private int groupKey;

 // 모임게시판이름 
 private String boardName;

 // 표시형식 
 private String boardType; //N : 일반 리스트 형식 , Y
 
 private int boardSeq;
 
 
 
 

public int getBoardSeq() {
	return boardSeq;
}

public void setBoardSeq(int boardSeq) {
	this.boardSeq = boardSeq;
}

public int getBoardKey() {
	return boardKey;
}

public void setBoardKey(int boardKey) {
	this.boardKey = boardKey;
}

public int getGroupKey() {
	return groupKey;
}

public void setGroupKey(int groupKey) {
	this.groupKey = groupKey;
}

public String getBoardName() {
	return boardName;
}

public void setBoardName(String boardName) {
	this.boardName = boardName;
}

public String getBoardType() {
	return boardType;
}

public void setBoardType(String boardType) {
	this.boardType = boardType;
}

 
 
 
}