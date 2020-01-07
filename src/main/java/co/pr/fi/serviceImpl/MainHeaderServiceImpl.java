package co.pr.fi.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MainHeaderDAO;
import co.pr.fi.service.MainHeaderService;

@Service
public class MainHeaderServiceImpl implements MainHeaderService {

	@Autowired
	MainHeaderDAO dao;
}
