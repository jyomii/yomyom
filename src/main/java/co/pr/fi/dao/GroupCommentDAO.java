package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//모임에서 게시판 댓글 관련 DB
@Repository
public class GroupCommentDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
