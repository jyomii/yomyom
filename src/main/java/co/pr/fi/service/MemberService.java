package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.GUsers;

//회원 처리
public interface MemberService {


	int idCheck(String id);

	List<GLocation> getLocationList();

	

	int joinUser(GUsers guser);


	GUsers getUsers(String id);

	int updatePassword(String id, String encPassword);

	int checkIdAndEmail(String id, String email);

	int restoreUser(int key);




}
