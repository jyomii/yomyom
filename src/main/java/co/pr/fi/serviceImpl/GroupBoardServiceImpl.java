package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupBoardDAO;
import co.pr.fi.domain.GComment;
import co.pr.fi.domain.Maps;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupBoardService;

@Service
public class GroupBoardServiceImpl implements GroupBoardService {

	@Autowired
	GroupBoardDAO dao;

	@Override
	public Post detailBoard(Map<String, Object> keys) {
		int result = dao.updateReadCount((Integer)keys.get("postkey"));
		if (result == 1) {
			return dao.detailBoard(keys);
		}
		System.out.println("조회수 증가 실패");
		return null;
	}

	@Override
	public int uploadMap(List<Maps> list2) {
	
		Map<String, Object> list = new HashMap<String, Object>();
		list.put("list", list2);
		return dao.uploadMap(list);
	}

	@Override
	public List<Maps> getMap(int postkey) {
	
		return dao.getMap(postkey);
	}

	@Override
	public int deleteAllMap() {
		return dao.deleteAllMap();
		
	}

	@Override
	public List<GComment> getBoardComment(Map<String, Object> keys) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = range((Integer)keys.get("page"), (Integer)keys.get("limit"));
		map.put("groupkey", keys.get("groupkey"));
		map.put("postkey", keys.get("postkey"));
		return dao.getBoardComment(map);
	}

	@Override
	public int isLiked(Map<String, Object> keys) {
		return dao.isLiked(keys);
	}

	@Override
	public int revokeLike(Map<String, Object> keys) {
		return dao.revokeLike(keys);
	}

	@Override
	public int doLike(Map<String, Object> keys) {
		return dao.doLike(keys);
	}

	@Override
	public int likeCount(Map<String, Object> keys) {
		return dao.likeCount(keys);
	}

	@Override
	public int getCommentCount(Map<String, Object> keys) {
		return dao.getCommentCount(keys);
	}
	
	public Map<String, Object> range (int page, int limit) {
		Map<String, Object> map = new HashMap<String, Object>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("START", startrow);
		map.put("END", endrow);
		return map;
	}
}
