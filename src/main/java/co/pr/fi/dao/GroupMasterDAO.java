package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;

//모임장 관련 DB (모임 생성, 모임 삭제, 모임 통계, 모임 멤버 관리, 일정 관리 , 게시판 추가/수정/삭제 등)
@Repository
public class GroupMasterDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int checkGroupName(String name) {
	
		return sqlSession.selectOne("GroupMaster.checkGroupName",name);
	}

	public int insertGroup(GGroup group) {
	
		return sqlSession.insert("GroupMaster.insertGroup",group);
	}

	public void insertGroupMember(GGroupMember member) {
	
		sqlSession.insert("GroupMaster.insertGroupMember",member);
	}

	public void insertGroupMember(GGroupBoard board) {
		sqlSession.insert("GroupMaster.insertGroupBoard",board);
	}

	public List<GGroupMember> getGroupMembers(Map<String, Object> keys) {
		return sqlSession.selectList("GroupMaster.groupMembers", keys);
	}

	public int getMemberCount(Map<String, Object> keys) {
		return sqlSession.selectOne("GroupMaster.memberCount", keys);
	}
	
	public List<GGroupMember> getYetGroupMember(Map<String, Object> keys) {
		return sqlSession.selectList("GroupMaster.yetGroupMember", keys);
	}
	
	public int getYetMemberCount(Map<String, Object> keys) {
		return sqlSession.selectOne("GroupMaster.yetMemberCount", keys);
	}
	
	public int isAdmin(Map<String, Object> map) {
		return sqlSession.selectOne("GroupMaster.isAdmin", map);
	}

	public int expelMem(Map<String, Object> map) {
		return sqlSession.delete("GroupMaster.expelMem", map);
	}

	public int rejectJoin(Map<String, Object> keys) {
		return sqlSession.delete("GroupMaster.rejectJoin", keys);
	}

	public int confirmJoin(Map<String, Object> keys) {
		return sqlSession.update("GroupMaster.confirmJoin", keys);
	}
}
