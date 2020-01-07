package co.pr.fi.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MemberDAO;
import co.pr.fi.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO dao;

	@Override
	public void isMember() {
	
		System.out.println("확인중입니다.");
		
	}

}
