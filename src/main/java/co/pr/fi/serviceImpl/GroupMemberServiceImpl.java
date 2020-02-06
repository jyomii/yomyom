package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupMemberDAO;
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
	public List<GGroup> userInGroup(int userKey, int page, int limit) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = range(page, limit);
		map.put("userkey", userKey);
		return dao.userInGroup(map);
	}

	@Override
	public List<Post> wroteInGroup(int userKey, int groupKey, int page, int limit) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = range(page, limit);
		map.put("userkey", userKey);
		map.put("groupkey", groupKey);
		return dao.wroteInGroup(map);
	}
	
	@Override
	public List<Post> postByCommented(int userKey, int groupKey, int loginuser, int page, int limit) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = range(page, limit);
		map.put("userkey", userKey);
		map.put("groupkey", groupKey);
		map.put("loginuser", loginuser);
		return dao.postByCommented(map);
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
	public int nickCheck(Map<String, Object> check) {
		Map<Object, Object> map = dao.nickCheck(check);
		if (map != null) {
			return 1;
		}
		return 0;
	}

	@Override
	public int getUser(String id) {
		return dao.getUser(id);
	}

	@Override
	public List<GGroup> preferGroup(Object id) {
		return dao.preferGroup(id);
	}

	@Override
	public int isNewMem(GGroupMember mem) {
		return dao.isNewMem(mem);
	}

	@Override
	public int getJoinedCount(int userKey) {
		return dao.getJoinedCount(userKey);
	}

	@Override
	public int getWroteCount(Map<String, Object> temp) {
		return dao.getWroteCount(temp);
	}

	@Override
	public int getCommentedCount(Map<String, Object> temp) {
		return dao.getCommentedCount(temp);
	}
	
	@Override
	public GGroupMember getPic(Map<String, Object> keys) {
		return dao.getPic(keys);
	}
	
	@Override
	public int isGroupMem(int loginuser, int groupKey) {
		Map<String, Object> keys = new HashMap<String, Object>();
		keys.put("userkey", loginuser);
		keys.put("groupkey", groupKey);
		keys.put("grade", 0);
		return dao.isGroupMem(keys);
	}
	
	@Override
	public int getMyPostCount(int loginuser) {
		return dao.getMyPostCount(loginuser);
	}
	
	@Override
	public List<Post> getMyPost(int loginuser, int page, int limit) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = range(page, limit);
		map.put("loginuser", loginuser);
		return dao.getMyPost(map);
	}
	
	@Override
	public int getMyCommentCount(int loginuser) {
		return dao.getMyCommentCount(loginuser);
	}

	@Override
	public List<Post> getMyComment(int loginuser, int page, int limit) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = range(page, limit);
		map.put("loginuser", loginuser);
		return dao.getMyComment(map);
	}
	
	public Map<String, Object> range (int page, int limit) {
		Map<String, Object> map = new HashMap<String, Object>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("START", startrow);
		map.put("END", endrow);
		return map;
	}
}
