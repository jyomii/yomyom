package co.pr.fi.service;

import java.util.List;
import java.util.Map;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.JoinAnswer;
import co.pr.fi.domain.JoinQuest;
import co.pr.fi.domain.Post;

// 모임 회원 처리
public interface GroupMemberService {
	List<GGroup> userInGroup(int userKey, int page, int limit);									// 유저의 가입한 모임 조회  
	List<Post> wroteInGroup(int userKey, int groupKey, int page, int limit);					// 유저의 모임 내 작성글 조회
	List<Post> postByCommented(int userKey, int groupKey, int loginuser, int page, int limit);	// 유저의 모임 내 댓글 조회
	List<JoinQuest> getJoinSample(int groupKey);												// 모임의 가입 양식 가져오기
	int joinGroup(GGroupMember mem);															// 유저의 모임 가입
	int setJoinSample(JoinAnswer answer);														// 유저가 작성한 가입양식
	int nickCheck(Map<String, Object> check);													// 닉네임 중복체크
	int getUser(String id);																		// 로그인한 유저의 유저키 가져오기
	List<GGroup> preferGroup(Object id);														// 지역, 카테고리별 추천 모임
	int isNewMem(GGroupMember mem);																// 
	int getJoinedCount(int userKey);															// 가입한 모임의 수 구하기
	int getWroteCount(Map<String, Object> temp);												// 작성한 글 수 구하기
	int getCommentedCount(Map<String, Object> temp);											// 작성한 댓글 수 구하기
	GGroupMember getPic(Map<String, Object> keys);												// 프로필사진 가져오기
	int isGroupMem(int loginuser, int groupKey);												// 모임의 회원인지
	int getMyPostCount(int loginuser);															// 내가 작성한 글 수 
	List<Post> getMyPost(int loginuser, int page, int limit);									// 내가 작성한 글 리스트
	int getMyCommentCount(int loginuser);														// 내가 작성한 댓글수
	List<Post> getMyComment(int loginuser, int page, int limit);								// 내가 작성한 댓글 리스트
	int getMaster(int groupkey);
	JoinAnswer getAnswerSample(Map<String, Object> temp);
}
