package co.pr.fi.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.PrBoard;

//홍보게시판 DB
@Repository
public class PrDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("Prs.count");
	}

	public List<PrBoard> getBoardList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Prs.boardList", map);
	}

	public int insertBoard(PrBoard prboard) {
		return sqlSession.insert("Prs.insert", prboard);
	}

}
