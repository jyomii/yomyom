package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GUsers;

//마이페이지 관련 DB
@Repository
public class MyPageDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public GUsers userinfo(String id) {
		return sqlSession.selectOne("Mypages.info", id);
	}

	public int myupdate(GUsers user) {
		return sqlSession.update("Mypages.update", user);
	}
	
	
}
