package co.pr.fi.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.AdminDAO;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.StatisticsAge;
import co.pr.fi.domain.StatisticsCategory;
import co.pr.fi.domain.StatisticsLocation;
import co.pr.fi.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO dao;

	@Override
	public List<StatisticsAge> statisticsAge() {
		return dao.statisticsAge();
	}

	@Override
	public List<StatisticsLocation> statisticsLocation() {
		return dao.statisticsLocation();
	}

	@Override
	public List<co.pr.fi.domain.StatisticsJoinDate> StatisticsJoinDate() {
		
		return dao.statisticsJoinDate();
	}

	@Override
	public List<StatisticsCategory> statisticsCategory() {
	
		return dao.statisticsCategory();
	}
}
