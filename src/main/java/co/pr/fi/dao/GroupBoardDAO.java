package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GComment;
import co.pr.fi.domain.Maps;
import co.pr.fi.domain.Post;

//모임에서 게시판 관련 DB(모임 게시판의 게시글 작성, 수정,삭제, 게시글 목록, 게시글 수정 등)
@Repository
public class GroupBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 게시글 조회
	public Post detailBoard(Map<String, Object> keys) {
		return sqlSession.selectOne("post.detailBoard", keys);
	}

	
	// 게시글 조회수 증가
	public int updateReadCount(int postkey) {
		return sqlSession.update("post.updateReadCount", postkey);
	}

	public int uploadMap(Map<String, Object> list) {
		return sqlSession.insert("post.uploadMap", list);
	}

	public List<Maps> getMap(int postkey) {
		return sqlSession.selectList("post.getMap", postkey);
	}

	public int deleteAllMap() {
		return sqlSession.delete("deleteAllMap");
	}

	public List<GComment> getBoardComment(Map<String, Object> keys) {
		return sqlSession.selectList("post.getBoardComment", keys);
	}
	
	public int isLiked(Map<String, Object> keys) {
		return sqlSession.selectOne("post.isLiked", keys);
	}

	public int revokeLike(Map<String, Object> keys) {
		return sqlSession.delete("post.revokeLike", keys);
	}

	public int doLike(Map<String, Object> keys) {
		return sqlSession.insert("post.doLike", keys);
	}

	public int likeCount(Map<String, Object> keys) {
		return sqlSession.selectOne("post.likeCount", keys);
	}

	public int getCommentCount(Map<String, Object> keys) {
		return sqlSession.selectOne("post.getCommentCount", keys);
	}
}
