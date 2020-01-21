package co.pr.fi.serviceImpl;

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
		return dao.getBoardList(page, limit);
	}
}
