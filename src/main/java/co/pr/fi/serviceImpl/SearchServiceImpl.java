package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.SearchDAO;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.Post;
import co.pr.fi.service.SearchService;


@Service
public class SearchServiceImpl implements SearchService{ 

	
	@Autowired
	SearchDAO searchDAO;

	
	@Override
	public List<GGroup> searchGroups(String text, int page, int limit) {
		Map<String, Object> list = new HashMap<String, Object>();

		int startrow = (page - 1) * limit + 1;
		// 읽기 시작할 row 번호(1 11 21 31
		int endrow = startrow + limit - 1;
		// 읽을 마지막 row 번호 (10 20 30

		list.put("text", text);
		list.put("startrow", startrow);
		list.put("endrow", endrow);

		return searchDAO.searchGroups(list);
	}

	@Override
	public List<Post> searchPost(String text, int page, int limit) {
		
		Map<String, Object> list = new HashMap<String, Object>();

		int startrow = (page - 1) * limit + 1;
		// 읽기 시작할 row 번호(1 11 21 31
		int endrow = startrow + limit - 1;
		// 읽을 마지막 row 번호 (10 20 30

		list.put("text", text);
		list.put("startrow", startrow);
		list.put("endrow", endrow);

		
		return searchDAO.searchPost(list);
	}

	@Override
	public int searchGroupsCount(String text) {
		return searchDAO.searchGroupsCount(text);
	}

	@Override
	public int searchPostCount(String text) {
		return searchDAO.searchPostCount(text);
	}


	
}
