package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import co.pr.fi.domain.BoardList;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.MeetingList;
import co.pr.fi.domain.MemberList;

@Repository
public class GroupDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public GGroup groupinfo(int groupkey) {
		return sqlSession.selectOne("Group.groupinfo", groupkey);
	}

	public int groupMainImgUpdate(GGroup group) {
		return sqlSession.update("Group.groupMainImgUpdate", group);
	}

	public int groupImgUpdate(GGroup group) {
		return sqlSession.update("Group.groupImgUpdate", group);
	}

	public GLocation groupwhere(int wherekey) {
		return sqlSession.selectOne("Group.groupwhere", wherekey);
	}

	public int groupage(int agekey) {
		return sqlSession.selectOne("Group.groupage", agekey);
	}

	public String groupdcategory(int categorykey) {
		return sqlSession.selectOne("Group.groupdcategory", categorykey);
	}
	
	public String groupscategory(int categorykey) {
		return sqlSession.selectOne("Group.groupscategory", categorykey);
	}

	public int groupmembers(int groupkey) {
		return sqlSession.selectOne("Group.groupmembers", groupkey);
	}

	public String groupmaster(int groupkey) {
		return sqlSession.selectOne("Group.groupmaster", groupkey);
	}

	public List<BoardList> groupboardlist(int groupkey) {
		return sqlSession.selectList("Group.groupboardlist", groupkey);
	}

	public List<MemberList> groupmemberlist(int groupkey) {
		return sqlSession.selectList("Group.groupmemberlist", groupkey);
	}

	public List<MeetingList> groupmeetinglist(int groupkey) {
		return sqlSession.selectList("Group.groupmeetinglist", groupkey);
	}

	public List<MemberList> groupcalendarmemberlist(Map<String, Integer> map) {
		return sqlSession.selectList("Group.groupcalendarlist", map);
	}

}

