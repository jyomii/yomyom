package co.pr.fi.dao;

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
		// TODO Auto-generated method stub
		return 0;
	}

	public List<PrBoard> getBoardList(int page, int limit) {
		// TODO Auto-generated method stub
		return null;
	}
}
