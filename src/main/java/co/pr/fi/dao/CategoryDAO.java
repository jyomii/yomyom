package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GCategoryName;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.RequestCategory;

@Repository
public class CategoryDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<String> getAdminusercategory(String id) {

		return sqlSession.selectList("category.getadminusercategory", id);
	}

	public List<GCategoryName> getAdminCategory() {
		return sqlSession.selectList("category.getAdminCategory");
	}

	public int isCategory(Map<String, String> map) {

		return sqlSession.selectOne("category.isCategory", map);
	}

	public int isDCategory(String dname) {

		Object result = sqlSession.selectOne("category.isDCategory", dname);
		
		return result != null ? (int)result : 0;
	}

	public int addSCategory(Map<String, Object> map) {
		return sqlSession.insert("category.addSCategory", map);
	}

	public int addDCategory(GCategory c) {
		return sqlSession.insert("category.addDCategory", c);
	}

	public List<RequestCategory> getRequestCategory() {

		return sqlSession.selectList("category.getRequestCategory");
	}

	public int deleteRequestCategory(Map<String, String> list) {
		return sqlSession.delete("category.deleteRequestCategory", list);
	}

	public List<GCategory> getDCategory() {

		return sqlSession.selectList("category.getdcategory");
	}

	public List<GCategory2> getSCategory() {
		return sqlSession.selectList("category.getscategory");
	}

	public int insertUserCategory(Map<String, Object> usercategory) {

		return sqlSession.insert("category.insertcategory", usercategory);
	}

	public int UserRequestCategory(RequestCategory request) {
		
		return sqlSession.insert("category.UserRequestCategory", request);
	}

	public int alreadyRequestCategory(RequestCategory request) {
	
		return sqlSession.selectOne("category.alreadyRequestCategory", request);
	}

	
	public List<GUsers> getUserRequestCategory(Map<String, String> list) {
		return sqlSession.selectList("category.getUserRequestCategory", list);

	}
  
  
  public int interestupdate(Map<String, Object>  category) {
		return sqlSession.update("category.interestupdate", category);
  }
}
