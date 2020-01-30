package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.GGroup;

//메인 화면 처리
public interface MainHeaderService {

	List<GGroup> getBestGroups();

	List<GGroup> getUserCategoryGroup(int i);

	List<GGroup> getNotUserCategoryGroup();

}
