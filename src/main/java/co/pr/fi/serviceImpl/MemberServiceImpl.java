package co.pr.fi.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MemberDAO;
import co.pr.fi.domain.GLocation;
import co.pr.fi.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;

	@Override
	public void isMember() {

		System.out.println("확인중입니다.");

	}

	@Override
	public int idCheck(String id) {

		return dao.idCheck(id);
	}

	@Override
	public List<GLocation> getLocationList() {
		
		return dao.getLocationList();
	}

}
