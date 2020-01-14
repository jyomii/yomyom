package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GCategoryName;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.PoliceResult;
import co.pr.fi.domain.RequestCategory;
import co.pr.fi.domain.StatisticsAge;
import co.pr.fi.domain.StatisticsCategory;
import co.pr.fi.domain.StatisticsJoinDate;
import co.pr.fi.domain.StatisticsLocation;

//관리자 관련 DB
@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<StatisticsAge> statisticsAge() {

		return sqlSession.selectList("Admin.getStatisticsAge");
	}

	public List<StatisticsLocation> statisticsLocation() {

		return sqlSession.selectList("Admin.getStatisticsLocation");
	}

	public List<StatisticsJoinDate> statisticsJoinDate() {

		return sqlSession.selectList("Admin.getStatisticsJoinDate");
	}

	public List<StatisticsCategory> statisticsCategory() {
		return sqlSession.selectList("Admin.getStatisticsCategory");
	}


	public int getListCount(int type) {

		return sqlSession.selectOne("Admin.getListCount", type);
	}

	public List<GUsers> getAllUserList(Map<String, Integer> list) {
		return sqlSession.selectList("Admin.getAllUserList", list);
	}

	public List<String> getAdminusercategory(String id) {
		
		return sqlSession.selectList("Admin.getadminusercategory",id);
	}

	public int AdmindeleteUser(String id) {
		
		return sqlSession.update("Admin.admindeleteUser",id);
	}

	public List<GUsers> AdminSearchUser(String keyword) {
		
		return sqlSession.selectList("Admin.AdminSearchUser",keyword);
	}

	public List<PoliceResult> adminPolice() {
		
		return sqlSession.selectList("Admin.AdminPolice");
	}

	public List<GCategoryName> getAdminCategory() {
		return sqlSession.selectList("Admin.getAdminCategory");
	}

	public int isCategory(Map<String, String> map) {
		
		return sqlSession.selectOne("Admin.isCategory",map);
	}

	public int isDCategory(String dname) {
		
		return sqlSession.selectOne("Admin.isDCategory",dname);
	}

	public int addSCategory(Map<String, Object> map) {
		return sqlSession.insert("Admin.addSCategory",map);
	}

	public int addDCategory(String dname) {
		return sqlSession.insert("Admin.addDCategory",dname);
	}

	public List<RequestCategory> getRequestCategory() {
	
		return sqlSession.selectList("Admin.getRequestCategory");
	}

	public int insertDCategory(String dname) {
		return sqlSession.insert("Admin.insertDCategory",dname);
	}

	public int insertDSCategory(Map<String, String> map) {
		return sqlSession.insert("Admin.insertDSCategory",map);
	}


}
