package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.BestPost;
import co.pr.fi.domain.GGroup;

//메인 화면 처리
public interface MainHeaderService {

	List<GGroup> getBestGroups();

	List<GGroup> getUserCategoryGroup(int i);

	List<GGroup> getNotUserCategoryGroup();

	List<GGroup> getUserCategoryActiveGroupList(int userKey);

	List<GGroup> getNotUserActiveGroupList();

	List<GGroup> getBestGroups(int categorykey, int getCount);

	List<GGroup> getCategoryActiveGroupList(int categorykey);

	List<BestPost> getBestBoard(int i);



}
