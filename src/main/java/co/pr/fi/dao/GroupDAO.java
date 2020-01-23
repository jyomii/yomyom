package co.pr.fi.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import co.pr.fi.domain.GGroupBoard;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.Post;
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

	public List<MemberList> groupcalendarmemberlist(Map<String, Integer> map) {
		return sqlSession.selectList("group.groupcalendarlist", map);
	}

	
}

