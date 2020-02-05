package co.pr.fi.service;

import java.util.List;
import java.util.Map;


import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GCategoryName;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.RequestCategory;


public interface CategoryService {

	int addDCategory(GCategory c);

	int deleteRequestCategory(String sname, String dname);

	int isCategory(String sname, String dname);

	int isDCategory(String dname);

	int addSCategory(int isDCategory, String sname);

	List<GCategoryName> getAdminCategory();

	List<RequestCategory> getRequestCategory();

	List<String> getAdminusercategory(String id);

	List<GCategory> getDCategory();

	List<GCategory2> getSCategory();

	int insertUserCategory(Map<String, Object> usercategory);

	int UserRequestCategory(RequestCategory request);

	int alreadyRequestCategory(RequestCategory request);

	List<GUsers> getUserRequestCategory(String sname, String dname);

	int interestupdate(Map<String, Object> usercategory);

	void interestInsert(Map<String, Object> usercategory);

	int mycateD(String id);

}
