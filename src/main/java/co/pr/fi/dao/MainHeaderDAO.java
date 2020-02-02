package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GGroup;

//메인페이지 DB (베스트 모임, 추천 모임, 즐겨찾는 모임, 검색 등)
@Repository
public class MainHeaderDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<GGroup> getBestGroups() {
		return sqlSession.selectList("maingroup.bestMainGroup");
	}

	public List<GGroup> getUserCategoryGroup(int i) {
		return sqlSession.selectList("maingroup.BestUserCateogryGroup",i);
	}

	public List<GGroup> getNotUserCategoryGroup() {
	
		return sqlSession.selectList("maingroup.BestNotUserCateogryGroup");
	}

	public List<GGroup> getUserCategoryActiveGroupList(int userKey) {
		return sqlSession.selectList("maingroup.getUserCategoryActiveGroupList",userKey);
	}

	public List<GGroup> getNotUserActiveGroupList() {
		return sqlSession.selectList("maingroup.getNotUserActiveGroupList");
	}

	public List<GGroup> getBestGroups(Map<String, Integer> map) {
		return sqlSession.selectList("maingroup.categorybestMainGroup",map);
	}

	public List<GGroup> getCategoryActiveGroupList(int categorykey) {
		return sqlSession.selectList("maingroup.getCategoryActiveGroupList",categorykey);
	}

}
