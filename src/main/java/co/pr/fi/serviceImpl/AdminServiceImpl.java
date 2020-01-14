package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.AdminDAO;
import co.pr.fi.domain.GCategoryName;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.PoliceResult;
import co.pr.fi.domain.RequestCategory;
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

	@Override
	public int getListCount(int type) {

		return dao.getListCount(type);
	}

	@Override
	public List<GUsers> getAllUserList(int type, int page, int limit) {

		Map<String, Integer> list = new HashMap<String, Integer>();

		int startrow = (page - 1) * limit + 1;
		// 읽기 시작할 row 번호(1 11 21 31
		int endrow = startrow + limit - 1;
		// 읽을 마지막 row 번호 (10 20 30

		list.put("type", type);
		list.put("startrow", startrow);
		list.put("endrow", endrow);

		return dao.getAllUserList(list);
	}

	@Override
	public List<String> getAdminusercategory(String id) {

		return dao.getAdminusercategory(id);
	}

	@Override
	public int AdmindeleteUser(String id) {
		
		return dao.AdmindeleteUser(id);
		
	}

	@Override
	public List<GUsers> AdminSearchUser(String keyword) {
	
		return dao.AdminSearchUser(keyword);
	}

	@Override
	public List<PoliceResult> adminPolice() {
		
		return dao.adminPolice();
	}

	@Override
	public List<GCategoryName> getAdminCategory() {
		
		return dao.getAdminCategory();
	}

	@Override
	public int isCategory(String sname, String dname) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("sname", sname);
		map.put("dname", dname);
		return dao.isCategory(map);
	}

	@Override
	public int isDCategory(String dname) {
		
		
		return ((Object)dao.isDCategory(dname) == null ? 0 : dao.isDCategory(dname));
	}

	@Override
	public int addSCategory(int DCategorykey, String sname) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dkey", DCategorykey);
		map.put("sname", sname);
		return dao.addSCategory(map);
	}

	@Override
	public int addDCategory(String dname) {
		
		return dao.addDCategory(dname);
	}

	@Override
	public List<RequestCategory> getRequestCategory() {
		
		return dao.getRequestCategory();
	}

	@Override
	public int insertDCategory(String dname) {
		
		return dao.insertDCategory(dname);
	}

	@Override
	public int insertDSCategory(String dname, String sname) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("dname", dname);
		map.put("sname", sname);
		return dao.insertDSCategory(map);
	}


	

}
