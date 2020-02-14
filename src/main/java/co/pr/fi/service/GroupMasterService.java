package co.pr.fi.service;

import java.util.List;
import java.util.Map;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;

//모임 장 처리
public interface GroupMasterService {

	int checkGroupName(String name);

	int insertGroup(GGroup group);

	void insertGroupMember(GGroupMember member);

	void insertGroupBoard(GGroupBoard noticeBoard);

	List<GGroupMember> getGroupMembers(int groupkey);
	
	List<GGroupMember> getYetGroupMember(int groupkey);

	int getMemberCount(int groupkey);

	int getYetMemberCount(int groupkey);

	int isAdmin(Map<String, Object> map);

	int expelMem(Map<String, Object> map);

	int rejectJoin(Map<String, Object> keys);

	int confirmJoin(Map<String, Object> keys);

	int downgrade(Map<String, Object> keys);
}
