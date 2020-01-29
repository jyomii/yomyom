package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.Post;

@Repository
public class SearchDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<GGroup> searchGroups(Map<String, Object> list) {
		
		return sqlSession.selectList("search.searchGroups",list);
	}

	public List<Post> searchPost(Map<String, Object> list) {
		
		return sqlSession.selectList("search.searchPost",list);
	}

	public int searchGroupsCount(String text) {
		return sqlSession.selectOne("search.searchGroupsCount",text);
	}

	public int searchPostCount(String text) {
		return sqlSession.selectOne("search.searchPostCount",text);
	}


}
