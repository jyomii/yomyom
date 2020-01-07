package co.pr.fi.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MyPageDAO;
import co.pr.fi.service.MyPageService;

@Service
public class MyPageServiceImpl implements MyPageService{

	@Autowired
	MyPageDAO dao;
}
