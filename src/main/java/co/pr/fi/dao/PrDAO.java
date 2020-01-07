package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//홍보게시판 DB
@Repository
public class PrDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
