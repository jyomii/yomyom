package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//모임에서 게시판 관련 DB(모임 게시판의 게시글 작성, 수정,삭제, 게시글 목록, 게시글 수정 등)
@Repository
public class GroupBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
