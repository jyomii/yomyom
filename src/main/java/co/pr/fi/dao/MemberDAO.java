package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.CalendarList;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.GUsers;

//회원 관련 DB
@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int idCheck(String id) {
		return sqlSession.selectOne("Member.idcheck", id);
	}

	public List<GLocation> getLocationList() {

		return sqlSession.selectList("Member.getlocationlist");
	}


	

	public int joinUser(GUsers guser) {
		
		return sqlSession.insert("Member.joinUser",guser);
	}



	public GUsers getUsers(String id) {
		
		return sqlSession.selectOne("Member.getUsers",id);
	}


	public int updatePassword(Map<String, String> map) {
		
		return sqlSession.update("Member.updatePassword",map);
	}



	public int checkIdAndEmail(Map<String, String> map) {
		return sqlSession.selectOne("Member.checkIdAndEmail",map);
	}

	public int restoreUser(int key) {
		
		return sqlSession.update("Member.restoreUser", key);
	}

	public List<CalendarList> getMycalendarlist(Map<String, Object> list) {
		
		return sqlSession.selectList("Member.getMycalendarlist", list);
	}





}
