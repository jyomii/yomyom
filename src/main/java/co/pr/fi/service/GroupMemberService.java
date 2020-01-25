package co.pr.fi.service;

import java.util.List;
import java.util.Map;

import co.pr.fi.domain.GComment;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.JoinQuest;
import co.pr.fi.domain.Post;

// 모임 회원 처리
public interface GroupMemberService {
	List<GGroup> userInGroup(int userKey);					// 유저의 가입한 모임 조회  
	List<Post> wroteInGroup(Map<String, Object> temp);		// 유저의 모임 내 작성글 조회
	List<Post> postByCommented(Map<String, Object> temp);	// 유저의 모임 내 댓글 조회
	List<JoinQuest> getJoinSample(int groupKey);			// 모임의 가입 양식 가져오기
}
