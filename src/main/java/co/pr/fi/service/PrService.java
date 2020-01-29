package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.PrBoard;

//홍보게시판 처리
public interface PrService {

	public int getListCount();

	public List<PrBoard> getBoardList(int page, int limit);

	public void insertBoard(PrBoard prboard);

	public PrBoard getDetail(int prkey);

	public int boardModify(PrBoard prboard);

	public boolean isBoardWriter(int userKey);

	public List<GGroup> userinfo(String id);

	
}
