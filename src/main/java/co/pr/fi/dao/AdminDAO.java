package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUsers;
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

	public List<StatisticsLocation> statisticsLocation() {

		return sqlSession.selectList("Admin.getStatisticsLocation");
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

	public int deleteGroupMember(int key) {
		return sqlSession.delete("Admin.deleteGroupMember", key);
	}

	public int sendMessage(UserMessage message) {
		return sqlSession.insert("Admin.sendMessage", message);
	}



}
