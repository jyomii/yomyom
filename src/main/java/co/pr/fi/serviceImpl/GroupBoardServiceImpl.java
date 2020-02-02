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
	public Post detailBoard(Map<String, Integer> keys) {
		int result = dao.updateReadCount(keys.get("postkey"));
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
	public List<GComment> getBoardComment(Map<String, Integer> keys) {
		return dao.getBoardComment(keys);
	}
}
