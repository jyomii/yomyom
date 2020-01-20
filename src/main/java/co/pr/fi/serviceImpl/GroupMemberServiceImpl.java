package co.pr.fi.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupMemberDAO;
import co.pr.fi.domain.GGroup;
import co.pr.fi.service.GroupMemberService;

@Service
public class GroupMemberServiceImpl implements GroupMemberService {

	@Autowired
	GroupMemberDAO dao;

	@Override
	public List<GGroup> userInGroup(int userKey) {
		return dao.userInGroup(userKey);
	}
}
