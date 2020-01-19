package co.pr.fi.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupMasterDAO;
import co.pr.fi.domain.GGroup;
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

}
