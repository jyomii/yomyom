package co.pr.fi.serviceImpl;

import java.util.List;

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
	public List<Post> detailBoard(String postkey) {
		int result = dao.updateReadCount(postkey);
		if (result == 1) {
			return dao.detailBoard(postkey);
		}
		System.out.println("조회수 증가 실패");
		return null;
	}
}
