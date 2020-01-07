package co.pr.fi.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupCommentDAO;
import co.pr.fi.service.GroupCommentService;

@Service
public class GroupCommentServiceImpl implements GroupCommentService {
	@Autowired
	GroupCommentDAO dao;
}
