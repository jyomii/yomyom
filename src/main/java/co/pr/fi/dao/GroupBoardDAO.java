package co.pr.fi.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.Post;

//모임에서 게시판 관련 DB(모임 게시판의 게시글 작성, 수정,삭제, 게시글 목록, 게시글 수정 등)
@Repository
public class GroupBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 게시글 조회
	public List<Post> detailBoard(String postkey) {
		return sqlSession.selectList("post.detailBoard", postkey);
	}
	
	// 게시글 조회수 증가
	public int updateReadCount(String postkey) {
		return sqlSession.update("post.updateReadCount", postkey);
	}
}
