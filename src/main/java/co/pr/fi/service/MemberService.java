package co.pr.fi.service;

import java.util.List;
import java.util.Map;

import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.GUsers;

//회원 처리
public interface MemberService {


	int idCheck(String id);

	List<GLocation> getLocationList();

	List<GCategory> getDCategory();

	List<GCategory2> getSCategory();

	int joinUser(GUsers guser);

	int insertUserCategory(Map<String, Object> usercategory);

	GUsers getUsers(String id);

	int updatePassword(String id, String encPassword);

	int checkIdAndEmail(String id, String email);

	int restoreUser(int key);




}
