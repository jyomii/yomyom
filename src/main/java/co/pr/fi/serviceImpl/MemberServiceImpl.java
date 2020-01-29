package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MemberDAO;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.GUsers;
import co.pr.fi.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;


	@Override
	public int idCheck(String id) {

		return dao.idCheck(id);
	}

	@Override
	public List<GLocation> getLocationList() {

		return dao.getLocationList();
	}

	@Override
	public int joinUser(GUsers guser) {
		
		return dao.joinUser(guser);
	}

	



	@Override
	public GUsers getUsers(String id) {
		
		return dao.getUsers(id);
	}

	@Override
	public int updatePassword(String id, String encPassword) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("password", encPassword);
		return dao.updatePassword(map);
	}

	@Override
	public int checkIdAndEmail(String id, String email) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("email", email);
		
		return dao.checkIdAndEmail(map);
	}

	@Override
	public int restoreUser(int key) {
		return dao.restoreUser(key);
	}



	
		
	}


	


