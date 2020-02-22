package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.CalendarList;
import co.pr.fi.domain.CalendarMember;
import co.pr.fi.domain.GCalendar;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.Shortschedule;
import co.pr.fi.domain.UserRegGroup;
import co.pr.fi.domain.MemberList;

@Repository
public class GroupDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public GGroup groupinfo(int groupkey) {
		return sqlSession.selectOne("group.groupinfo", groupkey);
	}

	public int groupMainImgUpdate(GGroup group) {
		return sqlSession.update("group.groupMainImgUpdate", group);
	}

	public int groupImgUpdate(GGroup group) {
		return sqlSession.update("group.groupImgUpdate", group);
	}

	public GLocation groupwhere(int wherekey) {
		return sqlSession.selectOne("group.groupwhere", wherekey);
	}

	public int groupage(int agekey) {
		return sqlSession.selectOne("group.groupage", agekey);
	}

	public String groupdcategory(int categorykey) {
		return sqlSession.selectOne("group.groupdcategory", categorykey);
	}

	public String groupscategory(int categorykey) {
		return sqlSession.selectOne("group.groupscategory", categorykey);
	}

	public int groupmembers(int groupkey) {
		return sqlSession.selectOne("group.groupmembers", groupkey);
	}

	public String groupmaster(int groupkey) {
		return sqlSession.selectOne("group.groupmaster", groupkey);
	}

	public List<GGroupBoard> groupboardlist(int groupkey) {
		return sqlSession.selectList("group.groupboardlist", groupkey);
	}

	
	public List<MemberList> groupmemberlist(int groupkey) {
		return sqlSession.selectList("group.groupmemberlist", groupkey);
	}

	public List<Post> groupmeetinglist(int groupkey) {
		return sqlSession.selectList("group.groupmeetinglist", groupkey);
	}

	public List<MemberList> groupcalendarmemberlist(Map<String, Object> map) {
		return sqlSession.selectList("group.groupcalendarmemberlist", map);
	}

	public void groupcalendarmemberinsert(Map<String, Object> map) {
		sqlSession.insert("group.groupcalendarmemberinsert", map);

	}

	public List<CalendarMember> calendarmemberjoinbtn(Map<String, Integer> map) {
		return sqlSession.selectList("group.calendarmemberjoinbtn", map);
	}

	public void groupcalendarmemberdelete(Map<String, Integer> map) {
		sqlSession.delete("group.groupcalendarmemberdelete", map);

	}

	public List<CalendarList> groupcalendarlist(Map<String, Object> map) {
		return sqlSession.selectList("group.groupcalendarlist", map);
	}

	public List<Shortschedule> shortschedule(Map<String, Object> map) {
		return sqlSession.selectList("group.shortschedule", map);
	}

	public List<Shortschedule> shortscheduleselected(Map<String, Object> map) {
		return sqlSession.selectList("group.shortscheduleselected", map);
	}

	
	public void groupboardupdate(Map<String, Object> map) {
		sqlSession.update("group.groupboardupdate", map);
	}

	public void groupboardinsert(Map<String, Object> map) {
		sqlSession.insert("group.groupboardinsert", map);

	}

	public void groupboarddelete(int boardkey) {
		sqlSession.delete("group.groupboarddelete", boardkey);
	}

	public GUsers userkey(String id) {
		return sqlSession.selectOne("group.userkey", id);
	}

	public int groupmasterkey(int groupkey) {
		return sqlSession.selectOne("group.groupmasterkey", groupkey);
	}

	public GGroupMember groupmember(Map<String, Integer> list) {
		return sqlSession.selectOne("group.groupmember", list);
	}

	public List<UserRegGroup> userreggroup(int userkey) {
		return sqlSession.selectList("group.userreggroup", userkey);
	}

	public void addSchedule(Post post) {
		sqlSession.insert("group.addschedule", post);
	}

	public int getgroupboardkey(int groupKey) {
		return sqlSession.selectOne("group.getgroupboardkey", groupKey);
	}

	public void addScheduleCalendar(Post post) {
		sqlSession.insert("group.addschedulecalendar", post);
		
	}

	
	public void updateboardmap(int postkey) {
		sqlSession.update("group.updateboardmap",postkey);
	}

	public List<GGroup> getGroupRank(Map<String, Integer> list) {
		return sqlSession.selectList("group.getGroupRank", list);

	}

	public Post modifypost(int postkey) {
		return sqlSession.selectOne("group.modifypost", postkey);
	}

	public CalendarList modifycalendar(int postkey) {
		return sqlSession.selectOne("group.modifycalendar", postkey);
	}

	public List<MemberList> modifymember(int postkey) {
		return sqlSession.selectList("group.modifymember", postkey);
	}

	public void calendardeleteajax(Map<String, Integer> list) {
		sqlSession.delete("group.calendardeleteajax",list);
		
	}

	public void updateSchedule(Post post) {
		sqlSession.update("group.updateschedule", post);
		
	}

	public void updateScheduleCalendar(Post post) {
		sqlSession.update("group.updateschedulecalendar", post);
		
	}

	public List<MemberList> modifymemberm(int postkey) {
		return sqlSession.selectList("group.modifymemberm", postkey);
	}

	public void calendarstomajax(Map<String, Integer> list) {
		sqlSession.update("group.calendarstomajax",list);
		
	}
	public void calendarmtosajax(Map<String, Integer> list) {
		sqlSession.update("group.calendarmtosajax",list);
		
	}
	
	public int boardlistcount(int boardkey) {
		return sqlSession.selectOne("group.boardlistcount", boardkey);
	}

	public List<Post> getboardlist(Map<String, Integer> list) {
		return sqlSession.selectList("group.getboardlist", list);
	}

	public void scheduledelete(int postkey) {
		sqlSession.delete("group.scheduledelete",postkey);
		
	}

	
	public void groupbasicupdate(Map<String, Object> list) {
		sqlSession.update("group.groupbasicupdate",list);
		
	}

	public List<Post> getboardlisty(Map<String, Integer> list) {
		return sqlSession.selectList("group.getboardlisty", list);
	}

	public int getschedulelistcount(int groupkey) {
		return sqlSession.selectOne("group.getschedulelistcount", groupkey);
	}

	public int regornot(Map<String, Integer> list) {
	      return sqlSession.selectOne("group.regornot", list);
	   }

	public Post groupafterlist(int groupkey) {
		return sqlSession.selectOne("group.groupafterlist", groupkey);
	}

	
	public void boardwriteinsert(Post post) {
		sqlSession.insert("group.boardwriteinsert", post);
	}

	public String getboardname(int boardkey) {
		return sqlSession.selectOne("group.getboardname", boardkey);
	}

	public int isMem(Map<String, Object> keys) {
		return sqlSession.selectOne("group.isMem", keys);
	}

	public int getSignupSample(int groupkey) {
		return sqlSession.selectOne("group.getSignupSample", groupkey);
	}

	public int addSignupSample(Map<String, Object> map) {
		return sqlSession.insert("group.addSignupSample", map);
	}

	public int updateSignupSample(Map<String, Object> map) {
		return sqlSession.update("group.updateSignupSample", map);
  }  

	public String getgroupnickname(Map<String, Integer> map) {
		return sqlSession.selectOne("group.getgroupnickname", map);
	}

	public Post detailpost(int postkey) {
		return sqlSession.selectOne("group.detailpost", postkey);
	}

	public void boardupdate(Post post) {
		sqlSession.update("group.boardupdate", post);
		
	}

	public void boarddelete(int postkey) {
		sqlSession.delete("group.boarddelete", postkey);
		
	}

	public List<MemberList> smodifymemberm(Map<String, Integer> map) {
		return sqlSession.selectList("group.smodifymemberm", map);
	}
	
	public List<MemberList> smodifymember(Map<String, Integer> map) {
		return sqlSession.selectList("group.smodifymember", map);
	}

	public List<UserRegGroup> userreggroupl(Map<String, Integer> map) {
		return sqlSession.selectList("group.userreggroupl", map);
	}
}
