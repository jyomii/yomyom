package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//모임 장소 관련 DB
@Repository
public class GroupPlaceDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
