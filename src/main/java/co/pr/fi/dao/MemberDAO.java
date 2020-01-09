package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
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


	public List<GCategory> getDCategory() {
		
		return sqlSession.selectList("Member.getdcategory");
	}

	public List<GCategory2> getSCategory() {
		return sqlSession.selectList("Member.getscategory");
	}

	public int joinUser(GUsers guser) {
		
		return sqlSession.insert("Member.joinUser",guser);
	}

	public int insertUserCategory(Map<String, Object> usercategory) {
		
		return sqlSession.insert("Member.insertcategory",usercategory);
	}

	public GUsers getUsers(String id) {
		
		return sqlSession.selectOne("Member.getUsers",id);
	}


	public int updatePassword(Map<String, String> map) {
		
		return sqlSession.update("updatePassword",map);
	}
}
