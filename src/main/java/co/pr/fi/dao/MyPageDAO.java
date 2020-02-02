package co.pr.fi.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUserCategory;
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

	public List<GGroup> userJoinGroup(String id) {
		return sqlSession.selectList("Mypages.joingroup", id);
	}

	public List<GGroup> userMakeGroup(String id) {
		return sqlSession.selectList("Mypages.makegroup", id);
	}

	public int joincount(String id) {
		return sqlSession.selectOne("Mypages.joincount", id);
	}

	public int makecount(String id) {
		return sqlSession.selectOne("Mypages.makecount", id);
	}

	public List<GCategory2> userInterest(String id) {
		return sqlSession.selectList("Mypages.userInterest", id);
	}

	public GUserCategory category(String id) {
		return sqlSession.selectOne("Mypages.category", id);
	}

	public int myupdate2(GUserCategory category) {
		return sqlSession.update("Mypages.myupdate2", category);
	}

	public int userImageUpdate(GUsers user) {
		return sqlSession.update("Mypages.imgUpdate", user);
	}

	public int insertPic(GUsers user) {
		return sqlSession.insert("Mypages.insertPic", user);
	}

	
}
