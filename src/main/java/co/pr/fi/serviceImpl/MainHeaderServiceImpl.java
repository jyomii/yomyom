package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MainHeaderDAO;
import co.pr.fi.domain.GGroup;
import co.pr.fi.service.MainHeaderService;

@Service
public class MainHeaderServiceImpl implements MainHeaderService {

	@Autowired
	MainHeaderDAO dao;

	@Override
	public List<GGroup> getBestGroups() {
		return dao.getBestGroups();
	}

	@Override
	public List<GGroup> getUserCategoryGroup(int i) {
		
		return dao.getUserCategoryGroup(i);
	}

	@Override
	public List<GGroup> getNotUserCategoryGroup() {
		return dao.getNotUserCategoryGroup();	
	}

	@Override
	public List<GGroup> getUserCategoryActiveGroupList(int userKey) {
		return dao.getUserCategoryActiveGroupList(userKey);	
	}

	@Override
	public List<GGroup> getNotUserActiveGroupList() {
		return dao.getNotUserActiveGroupList();	
	}

	@Override
	public List<GGroup> getBestGroups(int categorykey, int getCount) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("cateogrykey", categorykey);
		map.put("getCount", getCount);
		
		return dao.getBestGroups(map);
	}

	@Override
	public List<GGroup> getCategoryActiveGroupList(int categorykey) {
		return dao.getCategoryActiveGroupList(categorykey);
	}


	
}
