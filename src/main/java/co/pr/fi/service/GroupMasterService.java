package co.pr.fi.service;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;

//모임 장 처리
public interface GroupMasterService {

	int checkGroupName(String name);

	int insertGroup(GGroup group);

	void insertGroupMember(GGroupMember member);

	void insertGroupBoard(GGroupBoard noticeBoard);

}
