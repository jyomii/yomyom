package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupMasterDAO;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.service.GroupMasterService;

@Service
public class GroupMasterServiceImpl implements GroupMasterService {

	@Autowired
	GroupMasterDAO dao;

	@Override
	public int checkGroupName(String name) {
		
		return dao.checkGroupName(name);
	}

	@Override
	public int insertGroup(GGroup group) {
		
		
		return dao.insertGroup(group);
	}

	@Override
	public void insertGroupMember(GGroupMember member) {
		 dao.insertGroupMember(member);
	}

	@Override
	public void insertGroupBoard(GGroupBoard Board) {
		 dao.insertGroupMember(Board);
		
	}
	
	@Override
	public int isAdmin(Map<String, Object> map) {
		return dao.isAdmin(map);
	}

	@Override
	public List<GGroupMember> getGroupMembers(int groupkey) {
		Map<String, Object> keys = new HashMap<String, Object>();
		keys.put("groupkey", groupkey);
		keys.put("grade", 0);
		return dao.getGroupMembers(keys);
	}


	@Override
	public int getMemberCount(int groupkey) {
		Map<String, Object> keys = new HashMap<String, Object>();
		keys.put("groupkey", groupkey);
		keys.put("grade", 0);
		return dao.getMemberCount(keys);
	}

	@Override
	public int getYetMemberCount(int groupkey) {
		Map<String, Object> keys = new HashMap<String, Object>();
		keys.put("groupkey", groupkey);
		keys.put("grade", -1);
		return dao.getYetMemberCount(keys);
	}

	@Override
	public List<GGroupMember> getYetGroupMember(int groupkey) {
		Map<String, Object> keys = new HashMap<String, Object>();
		keys.put("groupkey", groupkey);
		keys.put("grade", -1);
		return dao.getYetGroupMember(keys);
	}

	@Override
	public int expelMem(Map<String, Object> map) {
		return dao.expelMem(map);
	}

	@Override
	public int rejectJoin(Map<String, Object> keys) {
		return dao.rejectJoin(keys);
	}

	@Override
	public int confirmJoin(Map<String, Object> keys) {
		return dao.confirmJoin(keys);
	}

}
