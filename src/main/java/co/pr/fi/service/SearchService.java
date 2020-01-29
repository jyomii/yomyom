package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.Post;

public interface SearchService {

	List<GGroup> searchGroups(String text, int page, int limit);

	List<Post> searchPost(String text, int page, int limit);

	int searchGroupsCount(String text);

	int searchPostCount(String text);



}
