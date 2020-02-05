package co.pr.fi.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GComment;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.UserLikeGroup;

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

	public List<GUserCategory> category(String id) {
		return sqlSession.selectList("Mypages.category", id);
	}

	public int userImageUpdate(GUsers user) {
		return sqlSession.update("Mypages.imgUpdate", user);
	}

	public int getListCount(String id) {
		return sqlSession.selectOne("Mypages.count", id);
	}

	public List<Post> getPostList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Mypages.postlist", map);
	}

	public int postcount(String id) {
		return sqlSession.selectOne("Mypages.postcount", id);
	}

	public int commcount(String id) {
		return sqlSession.selectOne("Mypages.commcount", id);
	}

	public List<Post> getList(String id) {
		return sqlSession.selectList("Mypages.listlist", id);
	}

	public List<GComment> getListList(String id) {
		return sqlSession.selectList("Mypages.listlistlist", id);
	}

	public int msgCount(int userKey) {
		return sqlSession.selectOne("Mypages.msgcount",userKey);
	}

	public List<UserLikeGroup> favlist(int userKey) {
		return sqlSession.selectList("Mypages.favlist", userKey);
	}

	public int favcount(int userKey) {
		return sqlSession.selectOne("Mypages.favcount", userKey);
	}

	public int favgroupD(int userKey) {
		return sqlSession.delete("Mypages.favgroupD", userKey);
	}

	public int favgroup(Map<String, Object> keyy) {
		return sqlSession.insert("Mypages.favgroup",keyy);
	}

	
}
