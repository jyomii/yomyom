package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.PoliceDetail;
import co.pr.fi.domain.PoliceResult;
import co.pr.fi.domain.StatisticsAge;
import co.pr.fi.domain.StatisticsCategory;
import co.pr.fi.domain.StatisticsJoinDate;
import co.pr.fi.domain.StatisticsLocation;
import co.pr.fi.domain.UserMessage;

//관리자 관련 DB
@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<StatisticsAge> statisticsAge() {

		return sqlSession.selectList("Admin.getStatisticsAge");
	}
	

	public List<StatisticsAge> statisticsGAge() {
		return sqlSession.selectList("Admin.getStatisticsGAge");
	}


	public List<StatisticsLocation> statisticsLocation() {

		return sqlSession.selectList("Admin.getStatisticsLocation");
	}
	
	public List<StatisticsLocation> statisticsgLocation() {
		return sqlSession.selectList("Admin.statisticsgLocation");
	}
	
	

	public List<StatisticsJoinDate> statisticsJoinDate() {

		return sqlSession.selectList("Admin.getStatisticsJoinDate");
	}

	public List<StatisticsCategory> statisticsCategory() {
		return sqlSession.selectList("Admin.getStatisticsCategory");
	}


	public int getListCount(int type) {

		return sqlSession.selectOne("Admin.getListCount", type);
	}

	public List<GUsers> getAllUserList(Map<String, Integer> list) {
		return sqlSession.selectList("Admin.getAllUserList", list);
	}

	

	public int AdmindeleteUser(String id) {
		
		return sqlSession.update("Admin.admindeleteUser",id);
	}

	public List<GUsers> AdminSearchUser(String keyword) {
		
		return sqlSession.selectList("Admin.AdminSearchUser",keyword);
	}

	public List<PoliceResult> adminPolice() {
		
		return sqlSession.selectList("Admin.AdminPolice");
	}



	public List<UserMessage> getNotice(Map<String, Integer> list) {
		return sqlSession.selectList("Admin.getNotice",list);
	}

	public int deleteNotice(Map<String, Object> list) {
	
		return sqlSession.delete("Admin.deleteNotice",list);
	}

	public List<GGroup> getAllGroupList(Map<String, Integer> list) {
		
		return sqlSession.selectList("Admin.getAllGroupList", list);
	}

	public int getGroupListCount(int type) {
		
		return sqlSession.selectOne("Admin.getGroupListCount", type);
	}

	public int acceptGroup(int key) {
		
		return sqlSession.update("Admin.acceptGroup", key);
	}

	public int negativeGroup(int key) {
		return sqlSession.delete("Admin.negativeGroup", key);
	}

	

	public List<StatisticsCategory> statisticsUCategory() {
		return sqlSession.selectList("Admin.statisticsUCategory");
	}


	public int setUserStatus(Map<String, Object> list) {
		return sqlSession.update("Admin.setUserStatus",list);
	}


	public List<PoliceDetail> policeBDetail(int userkey) {
	
		return sqlSession.selectList("Admin.policeBDetail",userkey);
	}


	public List<PoliceDetail> policeMDetail(int userkey) {
		return sqlSession.selectList("Admin.policeMDetail",userkey);
	}


	public void setUserStatusDate(String userId) {
		sqlSession.update("Admin.setUserStatusDate",userId);
	}


	public int deletePolice(int userKey) {
	
		return sqlSession.delete("Admin.deletePolice",userKey);
	}


	public int stopCancelUsers() {
		
		return sqlSession.update("Admin.stopCancelUsers");
	}


	public GGroup getGroup(int key) {
	
		return sqlSession.selectOne("Admin.getGroup",key);
	}


	public void insertDeleteFiles(String groupDFile) {

		sqlSession.insert("Admin.insert_deleteFile",groupDFile);
	}


	public List<String> getDeleteFiles() {
	
		return sqlSession.selectList("Admin.selectDeletelist");
	}


	public void deleteFilesList() {
		sqlSession.delete("Admin.deleteList");
	}







}
