package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupDAO;
import co.pr.fi.domain.BoardList;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.Group;
import co.pr.fi.domain.MeetingList;
import co.pr.fi.domain.MemberList;
import co.pr.fi.service.GroupService;

@Service
public class GroupServiceImpl implements GroupService {
	
	@Autowired
	GroupDAO dao;
	
	@Override
	public GGroup groupInfo(int groupkey) {
		return dao.groupinfo(groupkey);
	}

	@Override
	public int groupMainImgUpdate(GGroup group) {
		return dao.groupMainImgUpdate(group);
	}

	@Override
	public int groupImgUpdate(GGroup group) {
		return dao.groupImgUpdate(group);
		
	}

	@Override
	public GLocation groupwhere(int wherekey) {
		return dao.groupwhere(wherekey);
	}

	@Override
	public int groupage(int agekey) {
		return dao.groupage(agekey);
	}

	@Override
	public String groupdcategory(int categorykey) {
		return dao.groupdcategory(categorykey);
	}

	@Override
	public String groupscategory(int categorykey) {
		return dao.groupscategory(categorykey);
	}

	@Override
	public int groupmembers(int groupkey) {
		return dao.groupmembers(groupkey);
	}

	@Override
	public String groupmaster(int groupkey) {
		return dao.groupmaster(groupkey);
	}

	@Override
	public List<BoardList> groupboardlist(int groupkey) {
		return dao.groupboardlist(groupkey);
	}

	@Override
	public List<MemberList> groupmemberlist(int groupkey) {
		
		return dao.groupmemberlist(groupkey);
	}

	@Override
	public List<MeetingList> groupmeetinglist(int groupkey) {
		List<MeetingList> MeetingList = dao.groupmeetinglist(groupkey);
		for(int i = 0;i<MeetingList.size();i++) {
			String date = MeetingList.get(i).getCstartdate();

			String year = date.substring(0,4)+"�� ";  

			String month = date.substring(5,7)+"�� ";

			String day = date.substring(8,10)+"�� ";

			String time = date.substring(11,13)+"�� ";

			String minute = date.substring(14,16)+"��";
			if(minute.equals("00��"))
				minute="";
			MeetingList.get(i).setCstartdate(year+month+day+time+minute);
		}
		return MeetingList;
	}

	@Override
	public List<MemberList> calendarmemberlist(int postkey, int groupkey) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("postkey", postkey);
		map.put("groupkey", groupkey);
		return dao.groupcalendarmemberlist(map);
	}

}
