package co.pr.fi.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupPlaceDAO;
import co.pr.fi.service.GroupPlaceService;

@Service
public class GroupPlaceServiceImpl implements GroupPlaceService {

	@Autowired
	GroupPlaceDAO dao;
	
}
