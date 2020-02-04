package co.pr.fi.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MyPageDAO;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.service.MyPageService;

@Service
public class MyPageServiceImpl implements MyPageService{

	@Autowired
	MyPageDAO dao;
	
	public GUsers userinfo(String id) {
		return dao.userinfo(id);
	}

	public int myupdate(GUsers user) {
		return dao.myupdate(user);
	}

	@Override
	public List<GGroup> userJoinGroup(String id) {
		return dao.userJoinGroup(id);
	}

	@Override
	public List<GGroup> userMakeGroup(String id) {
		return dao.userMakeGroup(id);
	}

	@Override
	public int joincount(String id) {
		return dao.joincount(id);
	}

	@Override
	public int makecount(String id) {
		return dao.makecount(id);
	}

	@Override
	public List<GCategory2> userInterest(String id) {
		return dao.userInterest(id);
	}

	@Override
	public GUserCategory category(String id) {
		return dao.category(id);
	}

	@Override
	public int myupdate2(GUserCategory category) {
		return dao.myupdate2(category);
	}

	@Override
	public int userImgUpdate(GUsers user) {
 		return dao.userImageUpdate(user);
	}

	@Override
	public int insertPic(GUsers user) {
        return dao.insertPic(user);		
	}
	
}
