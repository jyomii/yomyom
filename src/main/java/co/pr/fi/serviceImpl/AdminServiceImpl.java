package co.pr.fi.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.AdminDAO;
import co.pr.fi.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO dao;

	@Override
	public Map<String, Object> statisticsAge() {
		
		//10 : 5
		//20 : 10
		//30 : 40
		
		
		return dao.statisticsAge();
	}
}
