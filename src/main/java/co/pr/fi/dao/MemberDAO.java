package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GLocation;

//회원 관련 DB
@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int idCheck(String id) {
		return sqlSession.selectOne("Member.idcheck",id);
	}

	public List<GLocation> getLocationList() {
		
		return sqlSession.selectList("Member.getlocationlist");
	}
}
