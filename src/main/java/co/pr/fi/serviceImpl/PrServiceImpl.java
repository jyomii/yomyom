package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.PrDAO;
import co.pr.fi.domain.PrBoard;
import co.pr.fi.service.PrService;

@Service
public class PrServiceImpl implements PrService{

	@Autowired
	PrDAO dao;

	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<PrBoard> getBoardList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page-1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getBoardList(map);
	}

	@Override
	public void insertBoard(PrBoard prboard) {
	    dao.insertBoard(prboard);
	}
}
