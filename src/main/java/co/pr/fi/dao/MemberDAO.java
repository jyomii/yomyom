package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//회원 관련 DB
@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
