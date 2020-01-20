package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.GCategoryName;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.PoliceResult;
import co.pr.fi.domain.RequestCategory;
import co.pr.fi.domain.StatisticsAge;
import co.pr.fi.domain.StatisticsCategory;
import co.pr.fi.domain.StatisticsJoinDate;
import co.pr.fi.domain.StatisticsLocation;
import co.pr.fi.domain.UserMessage;

//관리자 처리 
public interface AdminService {

	List<StatisticsAge> statisticsAge();

	List<StatisticsLocation> statisticsLocation();

	List<StatisticsJoinDate> StatisticsJoinDate();

	List<StatisticsCategory> statisticsCategory();

	List<GUsers> getAllUserList(int type, int page, int limit);

	int getListCount(int type);


	int AdmindeleteUser(String id);

	List<GUsers> AdminSearchUser(String keyword);

	List<PoliceResult> adminPolice();

	List<UserMessage> getNotice(int page, int limit);

	int deleteNotice(List<Integer> key);

	List<GGroup> getAllGroupList(int type, int page, int limit);

	int getGroupListCount(int i);

	int acceptGroup(int key);

	int negativeGroup(int key);

	int deleteGroupMember(int key);

	List<StatisticsAge> statisticsGAge();

	List<StatisticsLocation> statisticsgLocation();

	List<StatisticsCategory> statisticsUCategory();

	int setUserStatus(String id, int i);

	


	




}
