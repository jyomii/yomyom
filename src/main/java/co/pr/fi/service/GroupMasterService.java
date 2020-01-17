package co.pr.fi.service;

import co.pr.fi.domain.GGroup;

//모임 장 처리
public interface GroupMasterService {

	int checkGroupName(String name);

	int insertGroup(GGroup group);

}
