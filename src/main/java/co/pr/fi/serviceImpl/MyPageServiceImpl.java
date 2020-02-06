package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MyPageDAO;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GComment;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.UserLikeGroup;
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
	public List<GUserCategory> category(String id) {
		return dao.category(id);
	}

	@Override
	public int userImgUpdate(GUsers user) {
 		return dao.userImageUpdate(user);
	}


	@Override
	public int getListCount(String id) {
		return dao.getListCount(id);
	}

	@Override
	public List<Post> getPostList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page-1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getPostList(map);
	}

	@Override
	public int postcount(String id) {
		return dao.postcount(id);
	}

	@Override
	public int commcount(String id) {
		return dao.commcount(id);
	}

	@Override
	public List<Post> getList(String id) {
		return dao.getList(id);
	}

	@Override
	public List<GComment> getListList(String id) {
		return dao.getListList(id);
	}

	@Override
	public int msgCount(int userKey) {
		return dao.msgCount(userKey);
	}

	@Override
	public List<UserLikeGroup> favlist(int userKey) {
		return dao.favlist(userKey);
	}


	@Override
	public int favcount(int userKey) {
		return dao.favcount(userKey);
	}

	@Override
	public int favgroupD(int userKey, int groupKey) {
		Map<String, Object> dd = new HashMap<String, Object>();
		dd.put("userKey", userKey);
		dd.put("groupKey", groupKey);
		return dao.favgroupD(dd);
	}

	@Override
	public int favgroup(int userKey, int groupKey) {
		Map<String, Object> keyy = new HashMap<String, Object>();
		keyy.put("userKey", userKey);
		keyy.put("groupKey", groupKey);
		return dao.favgroup(keyy);
	}

	@Override
	public List<UserLikeGroup> favlist(String id) {
		return dao.favlist(id);
	}

	@Override
	public int favcount(String id) {
		return dao.favcount(id);
	}

	
}
