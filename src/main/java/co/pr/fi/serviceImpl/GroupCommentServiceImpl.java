package co.pr.fi.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupCommentDAO;
import co.pr.fi.domain.GComment;
import co.pr.fi.service.GroupCommentService;

@Service
public class GroupCommentServiceImpl implements GroupCommentService {
	@Autowired
	GroupCommentDAO dao;

	@Override
	public int postReply(Map<String, Object> data) {
		return dao.postReply(data);
	}

	@Override
	public GComment getCommentInfo(int commentnum) {
		return dao.getCommentInfo(commentnum);
	}

	@Override
	public int commentReply(Map<String, Object> data, GComment co) {
		updateComment(co);
		co.setCommentReLev(co.getCommentReLev() + 1);
		co.setCommentReSeq(co.getCommentReSeq() + 1);
		data.put("commentReLev", co.getCommentReLev());
		data.put("commentReSeq", co.getCommentReSeq());
		return dao.commentReply(data);
	}

	@Override
	public int updateComment(GComment co) {
		return dao.updateComment(co);
	}
	
	@Override
	public int update(Map<String, Object> keys) {
		return dao.update(keys);
	}
	
	@Override
	public int commentDelete(int commentnum) {
		int result = 0;
		GComment co = dao.getDetail(commentnum);
		if (co != null) {
			result = dao.commentDelete(co);
		}
		return result;
	}
}
