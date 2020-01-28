package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GComment;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.JoinAnswer;
import co.pr.fi.domain.JoinQuest;
import co.pr.fi.domain.Post;

//모임 회원 관련 DB (모임 참여, 탈퇴 // 모임 회원 목록, 회원이 쓴 글 확인, 참여 모임 확인, 댓글 목록 확인 등  )
@Repository
public class GroupMemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 유저의 가입한 모임 조회
	public List<GGroup> userInGroup (int userKey) {
		return sqlSession.selectList("group.userInGroup", userKey);
	}
	
	// 해당 모임 내 유저의 작성글 조회
	public List<Post> wroteInGroup (Map<String, Object> temp) {
		return sqlSession.selectList("post.wroteInGroup", temp);
	}
	
	// 해당 모임 내 유저가 댓글 단 글 조회 
	public List<Post> postByCommented(Map<String, Object> temp) {
		return sqlSession.selectList("post.postByCommented", temp);
	}
	
	// 모임의 가입 양식 가져오기
	public List<JoinQuest> getJoinSample(int groupKey) {
		return sqlSession.selectList("group.getJoinSample", groupKey);
	}
	
	// 회원의 모임 가입
	public int joinGroup(GGroupMember mem) {
		return sqlSession.insert("group.joinGroup", mem);
	}
	
	// 회원이 작성한 가입양식 
	public int setJoinSample(JoinAnswer answer) {
		return sqlSession.insert("group.setJoinSample", answer);
	}
	
	// 닉네임 중복체크
	public Map<Object, String> nickCheck(Map<String, String> check) {
		return sqlSession.selectOne("group.nickCheck", check);
	}
}
