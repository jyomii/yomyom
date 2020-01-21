package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.GGroup;

//모임 회원 처리
public interface GroupMemberService {
	
	List<GGroup> userInGroup(int userKey);	// 유저의 가입한 모임 조회  
}
