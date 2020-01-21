package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.AdminDAO;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.PoliceDetail;
import co.pr.fi.domain.PoliceResult;
import co.pr.fi.domain.StatisticsAge;
import co.pr.fi.domain.StatisticsCategory;
import co.pr.fi.domain.StatisticsLocation;
import co.pr.fi.domain.UserMessage;
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
	public List<StatisticsAge> statisticsGAge() {
		return dao.statisticsGAge();
	}
	

	@Override
	public List<StatisticsLocation> statisticsLocation() {
		return dao.statisticsLocation();
	}

	@Override
	public List<StatisticsLocation> statisticsgLocation() {
		return dao.statisticsgLocation();
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
	public List<UserMessage> getNotice(int page, int limit) {

		Map<String, Integer> list = new HashMap<String, Integer>();

		int startrow = (page - 1) * limit + 1;
		// 읽기 시작할 row 번호(1 11 21 31
		int endrow = startrow + limit - 1;
		// 읽을 마지막 row 번호 (10 20 30

		list.put("startrow", startrow);
		list.put("endrow", endrow);

		return dao.getNotice(list);
	}

	@Override
	public int deleteNotice(List<Integer> key) {

		Map<String, Object> list = new HashMap<String, Object>();
		list.put("key", key);
		return dao.deleteNotice(list);
	}

	@Override
	public List<GGroup> getAllGroupList(int type, int page, int limit) {

		Map<String, Integer> list = new HashMap<String, Integer>();

		int startrow = (page - 1) * limit + 1;
		// 읽기 시작할 row 번호(1 11 21 31
		int endrow = startrow + limit - 1;
		// 읽을 마지막 row 번호 (10 20 30

		list.put("type", type);
		list.put("startrow", startrow);
		list.put("endrow", endrow);

		return dao.getAllGroupList(list);
	}

	@Override
	public int getGroupListCount(int type) {
			return dao.getGroupListCount(type);
	}

	@Override
	public int acceptGroup(int key) {
		return dao.acceptGroup(key);
	}

	@Override
	public int negativeGroup(int key) {
		return dao.negativeGroup(key);
	}

	

	@Override
	public List<StatisticsCategory> statisticsUCategory() {
		return dao.statisticsUCategory();
	}

	@Override
	public int setUserStatus(String id, int status) {
		 Map<String, Object> list = new HashMap<String, Object>();
		 list.put("id", id);
		 list.put("status", status);
		return dao.setUserStatus(list);
	}

	@Override
	public List<PoliceDetail> policeBDetail(int userkey) {
		
		return dao.policeBDetail(userkey);
	}

	@Override
	public List<PoliceDetail> policeMDetail(int userkey) {
		return dao.policeMDetail(userkey);
	}

	@Override
	public void setUserStatusDate(String userId) {
		dao.setUserStatusDate(userId);
	}

	@Override
	public int deletePolice(int userKey) {
		
		return 	dao.deletePolice(userKey);
	}

	@Override
	public int stopCancelUsers() {
		return dao.stopCancelUsers();
	}

	@Override
	public GGroup getGroup(int key) {
	
		return dao.getGroup(key);
	}

	@Override
	public void insertDeleteFiles(String groupDFile) {
		dao.insertDeleteFiles(groupDFile);
		
	}

	@Override
	public List<String> getDeleteFiles() {
		return dao.getDeleteFiles();
	}

	@Override
	public void deleteFilesList() {
		dao.deleteFilesList();
	}





	

}
