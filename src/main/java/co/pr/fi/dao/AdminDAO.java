package co.pr.fi.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//관리자 관련 DB
@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Map<String, Object> statisticsAge() {
		
		return sqlSession.selectMap("", mapKey)
	}
}
