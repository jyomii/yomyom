package co.pr.fi.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GComment;

//모임에서 게시판 댓글 관련 DB
@Repository
public class GroupCommentDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int postReply(Map<String, Object> data) {
		return sqlSession.insert("comment.postReply", data);
	}

	public GComment getCommentInfo(int commentnum) {
		return sqlSession.selectOne("comment.getCommentInfo", commentnum);
	}

	public int updateComment(GComment co) {
		return sqlSession.update("comment.updateComment", co);
	}

	public int commentReply(Map<String, Object> data) {
		return sqlSession.insert("comment.commentReply", data);
	}
}
