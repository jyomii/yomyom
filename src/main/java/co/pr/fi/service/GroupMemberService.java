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
	List<GGroup> userInGroup(int userKey, int page, int limit);					// 유저의 가입한 모임 조회  
	List<Post> wroteInGroup(int userKey, int groupKey, int page, int limit);		// 유저의 모임 내 작성글 조회
	List<Post> postByCommented(int userKey, int groupKey, int page, int limit);	// 유저의 모임 내 댓글 조회
	List<JoinQuest> getJoinSample(int groupKey);			// 모임의 가입 양식 가져오기
	int joinGroup(GGroupMember mem);						// 유저의 모임 가입
	int setJoinSample(JoinAnswer answer);					// 유저가 작성한 가입양식
	int nickCheck(Map<String, Object> check);
	int getUser(String id);									// 로그인한 유저의 유저키 가져오기
	List<GGroup> preferGroup(Object id);
	int isNewMem(GGroupMember mem);
	int getJoinedCount(int userKey);
	int getWroteCount(Map<String, Object> temp);
	int getCommentedCount(Map<String, Object> temp);
	GGroupMember getPic(Map<String, Object> keys);
	int isGroupMem(int loginuser, int groupKey);
}
