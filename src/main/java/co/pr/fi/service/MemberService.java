package co.pr.fi.service;

import java.util.List;
import java.util.Map;

import co.pr.fi.domain.GLocation;

//회원 처리
public interface MemberService {

	void isMember();

	int idCheck(String id);

	List<GLocation> getLocationList();

}
