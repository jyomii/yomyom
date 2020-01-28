package co.pr.fi.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupMemberDAO;
import co.pr.fi.domain.GComment;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.JoinAnswer;
import co.pr.fi.domain.JoinQuest;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupMemberService;

@Service
public class GroupMemberServiceImpl implements GroupMemberService {

	@Autowired
	GroupMemberDAO dao;

	@Override
	public List<GGroup> userInGroup(int userKey) {
		return dao.userInGroup(userKey);
	}

	@Override
	public List<Post> wroteInGroup(Map<String, Object> temp) {
		return dao.wroteInGroup(temp);
	}

	@Override
	public List<Post> postByCommented(Map<String, Object> temp) {
		return dao.postByCommented(temp);
	}

	@Override
	public List<JoinQuest> getJoinSample(int groupKey) {
		return dao.getJoinSample(groupKey);
	}

	@Override
	public int joinGroup(GGroupMember mem) {
		return dao.joinGroup(mem);
	}

	@Override
	public int setJoinSample(JoinAnswer answer) {
		return dao.setJoinSample(answer);
	}

	@Override
	public int nickCheck(Map<String, String> check) {
		Map<Object, String> map = dao.nickCheck(check);
		if (map != null) {
			return 1;
		}
		return 0;
	}
}
