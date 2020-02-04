package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GComment;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.Post;

//마이페이지 처리
public interface MyPageService {

	public GUsers userinfo(String id);

    public int myupdate(GUsers user);

	public List<GGroup> userJoinGroup(String id);

	public List<GGroup> userMakeGroup(String id);

	public int joincount(String id);

	public int makecount(String id);

	public List<GCategory2> userInterest(String id);

	public List<GUserCategory> category(String id);

	public int userImgUpdate(GUsers user);

	public int getListCount(String id);

	public List<Post> getPostList(int page, int limit);

	public int postcount(String id);

	public int commcount(String id);

    public List<Post> getList(String id);

	public List<GComment> getListList(String id);

	public int msgCount(int userKey);

    
}
