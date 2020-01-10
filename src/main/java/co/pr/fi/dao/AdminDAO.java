package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GLocation;
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
		
		return sqlSession.selectList("getStatisticsAge");
	}

	public List<StatisticsLocation> statisticsLocation() {

		return sqlSession.selectList("getStatisticsLocation");
	}

	public List<StatisticsJoinDate> statisticsJoinDate() {
	
		return sqlSession.selectList("getStatisticsJoinDate");
	}

	public List<StatisticsCategory> statisticsCategory() {
		return sqlSession.selectList("getStatisticsCategory");
	}
}
