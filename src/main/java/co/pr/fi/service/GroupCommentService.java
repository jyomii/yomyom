package co.pr.fi.service;

import java.util.Map;

import co.pr.fi.domain.GComment;

//모임 게시판 댓글 처리
public interface GroupCommentService {

	int postReply(Map<String, Object> data);	// 게시글에 댓글
	GComment getCommentInfo(int commentnum);	// 원댓글의 참조번호, 시퀀스번호 가져온다.
	int commentReply(Map<String, Object> data, GComment co);	// 댓글에 댓글 
	int updateComment(GComment co);
}
