package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//모임 회원 관련 DB (모임 참여, 탈퇴 // 모임 회원 목록, 회원이 쓴 글 확인, 참여 모임 확인, 댓글 목록 확인 등  )
@Repository
public class GroupMemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
