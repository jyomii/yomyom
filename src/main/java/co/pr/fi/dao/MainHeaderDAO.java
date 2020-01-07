package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//메인페이지 DB (베스트 모임, 추천 모임, 즐겨찾는 모임, 검색 등)
@Repository
public class MainHeaderDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
