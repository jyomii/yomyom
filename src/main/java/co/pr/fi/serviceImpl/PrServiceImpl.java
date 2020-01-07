package co.pr.fi.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.PrDAO;
import co.pr.fi.service.PrService;

@Service
public class PrServiceImpl implements PrService{

	@Autowired
	PrDAO dao;
}
