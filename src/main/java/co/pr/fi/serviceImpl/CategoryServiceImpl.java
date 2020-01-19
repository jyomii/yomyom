package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.CategoryDAO;
import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GCategoryName;
import co.pr.fi.domain.RequestCategory;
import co.pr.fi.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{

	
	@Autowired
	CategoryDAO dao;
	
	@Override
	public List<String> getAdminusercategory(String id) {

		return dao.getAdminusercategory(id);
	}
	
	@Override
	public List<GCategoryName> getAdminCategory() {

		return dao.getAdminCategory();
	}
	
	

	@Override
	public int isCategory(String sname, String dname) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("sname", sname);
		map.put("dname", dname);
		return dao.isCategory(map);
	}

	@Override
	public int isDCategory(String dname) {

		return ((Object) dao.isDCategory(dname) == null ? 0 : dao.isDCategory(dname));
	}

	@Override
	public int addSCategory(int DCategorykey, String sname) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dkey", DCategorykey);
		map.put("sname", sname);
		return dao.addSCategory(map);
	}



	@Override
	public List<RequestCategory> getRequestCategory() {

		return dao.getRequestCategory();
	}

	@Override
	public int deleteRequestCategory(String sname, String dname) {

		Map<String, String> list = new HashMap<String, String>();
		if (sname != null && !sname.equals(""))
			list.put("sname", sname);

		list.put("dname", dname);
		return dao.deleteRequestCategory(list);
	}
	

	@Override
	public List<GCategory> getDCategory() {
		
		return dao.getDCategory();
	}

	@Override
	public List<GCategory2> getSCategory() {

		return dao.getSCategory();
	}
	
	@Override
	public int insertUserCategory(Map<String, Object> usercategory) {
		
		return dao.insertUserCategory(usercategory);
	}

	@Override
	public int UserRequestCategory(RequestCategory request) {
		
		return dao.UserRequestCategory(request);
	}

	@Override
	public int alreadyRequestCategory(RequestCategory request) {
		
		return dao.alreadyRequestCategory(request);
	}

	@Override
	public int addDCategory(GCategory c) {
		return dao.addDCategory(c);
	}


	
}
