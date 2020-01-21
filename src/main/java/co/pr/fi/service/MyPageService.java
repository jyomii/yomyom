package co.pr.fi.service;

import co.pr.fi.domain.GUsers;

//마이페이지 처리
public interface MyPageService {

	GUsers userinfo(String id);

    int myupdate(GUsers user);

}
