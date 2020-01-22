package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.Post;

//그룹 장 처리
public interface GroupBoardService {
	List<Post> detailBoard (String postkey);
}
