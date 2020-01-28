package co.pr.fi.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupBoardDAO;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupBoardService;

@Service
public class GroupBoardServiceImpl implements GroupBoardService {

	@Autowired
	GroupBoardDAO dao;

	@Override
	public Post detailBoard(Map<String, String> keys) {
		int result = dao.updateReadCount(keys.get("postkey"));
		if (result == 1) {
			return dao.detailBoard(keys);
		}
		System.out.println("조회수 증가 실패");
		return null;
	}
}
