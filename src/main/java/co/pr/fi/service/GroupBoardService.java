package co.pr.fi.service;

import java.util.List;
import java.util.Map;

import co.pr.fi.domain.GComment;
import co.pr.fi.domain.Maps;
import co.pr.fi.domain.Post;

//그룹 장 처리
public interface GroupBoardService {
	Post detailBoard (Map<String, Integer> keys);
  
	int uploadMap(List<Maps> list);

	List<Maps> getMap(int postkey);

	int deleteAllMap();

	List<GComment> getBoardComment(Map<String, Integer> keys);
}
