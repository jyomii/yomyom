package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.BoardList;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.MeetingList;
import co.pr.fi.domain.MemberList;

public interface GroupService {
	public GGroup groupInfo(int groupKey);
	public int groupMainImgUpdate(GGroup group);
	public int groupImgUpdate(GGroup group);
	public GLocation groupwhere(int wherekey);
	public int groupage(int agekey);
	public String groupdcategory(int categorykey);
	public String groupscategory(int categorykey);
	public int groupmembers(int groupkey);
	public String groupmaster(int groupkey);
	public List<BoardList> groupboardlist(int groupkey);
	public List<MemberList> groupmemberlist(int groupkey);
	public List<MeetingList> groupmeetinglist(int groupkey);
	public List<MemberList> calendarmemberlist(int postkey, int groupkey);
	
	}
