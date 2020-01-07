package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//마이페이지 관련 DB
@Repository
public class MyPageDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
