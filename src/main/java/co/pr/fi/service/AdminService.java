package co.pr.fi.service;

import java.util.List;
import java.util.Map;

import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.StatisticsAge;
import co.pr.fi.domain.StatisticsCategory;
import co.pr.fi.domain.StatisticsJoinDate;
import co.pr.fi.domain.StatisticsLocation;

//관리자 처리 
public interface AdminService {

	List<StatisticsAge> statisticsAge();

	List<StatisticsLocation> statisticsLocation();

	List<StatisticsJoinDate> StatisticsJoinDate();

	List<StatisticsCategory> statisticsCategory();

}
