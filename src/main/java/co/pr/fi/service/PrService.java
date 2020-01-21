package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.PrBoard;

//홍보게시판 처리
public interface PrService {

	int getListCount();

	List<PrBoard> getBoardList(int page, int limit);

}
