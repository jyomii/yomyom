package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GUsers;
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

}
