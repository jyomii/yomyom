package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;

//마이페이지 처리
public interface MyPageService {

	public GUsers userinfo(String id);

    public int myupdate(GUsers user);

	public List<GGroup> userJoinGroup(String id);

	public List<GGroup> userMakeGroup(String id);

	public int joincount(String id);

	public int makecount(String id);

	public List<GCategory2> userInterest(String id);

	public GUserCategory category(String id);

	public int myupdate2(GUserCategory category);

	public int userImgUpdate(GUsers user);

	public int insertPic(GUsers user);


    
}
