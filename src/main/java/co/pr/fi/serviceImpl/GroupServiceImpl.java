package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.GroupDAO;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.CalendarList;
import co.pr.fi.domain.CalendarMember;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.Shortschedule;
import co.pr.fi.domain.UserRegGroup;
import co.pr.fi.service.GroupService;
import co.pr.fi.domain.MemberList;

@Service
public class GroupServiceImpl implements GroupService {
	
	@Autowired
	GroupDAO dao;
	
	@Override
	public GGroup groupInfo(int groupkey) {
		GGroup groupinfo = dao.groupinfo(groupkey);
		
		String date = groupinfo.getGroupDate();
		String year = date.substring(0,4)+"년 ";  
		String month = date.substring(5,7)+"월 ";
		String day = date.substring(8,10)+"일";
		String tdate = year+month+day;
		groupinfo.setGroupDate(tdate);
		return groupinfo;
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
	public String groupdcategory(int categorykey,int groupkey) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("categorykey", categorykey);
		map.put("groupkey", groupkey);
		return dao.groupdcategory(categorykey);
	}

	@Override
	public String groupscategory(int categorykey,int groupkey) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("categorykey", categorykey);
		map.put("groupkey", groupkey);
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
	public List<GGroupBoard> groupboardlist(int groupkey) {
		return dao.groupboardlist(groupkey);
	}

	@Override
	public List<MemberList> groupmemberlist(int groupkey) {
		
		return dao.groupmemberlist(groupkey);
	}

	@Override
	public List<Post> groupmeetinglist(int groupkey, int userkey) {
		List<Post> MeetingList = dao.groupmeetinglist(groupkey);
		for(int i = 0;i<3;i++) {
			String date = MeetingList.get(i).getCstartdate();
			System.out.println("!!!!!!!!!!!!!!!!!!!"+date);

			String year = date.substring(0,4)+"년 ";  

			String month = date.substring(5,7)+"월 ";

			String day = date.substring(8,10)+"일 ";

			String time = date.substring(13,15)+"시 ";

			String minute = date.substring(16,18)+"분";
			if(minute.equals("00분"))
				minute="";
			MeetingList.get(i).setCstartdate(year+month+day+time+minute);
			int postkey = MeetingList.get(i).getPostKey();
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("postkey", postkey);
			map.put("groupkey", groupkey);
			map.put("userkey", userkey);
			List<CalendarMember> calendarmember = dao.calendarmemberjoinbtn(map);
			if(calendarmember.size()==0) {
				MeetingList.get(i).setJoinbtn("yes");
			}else {
				MeetingList.get(i).setJoinbtn("no");
			}
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


	@Override
	public void calendarmemberinsert(int postkey, int groupkey, int userkey) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("postkey", postkey);
		map.put("groupkey", groupkey);
		map.put("userkey", userkey);
		dao.groupcalendarmemberinsert(map);
		
	}


	@Override
	public void calendarmemberdelete(int postkey, int groupkey, int userkey) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("postkey", postkey);
		map.put("groupkey", groupkey);
		map.put("userkey", userkey);
		dao.groupcalendarmemberdelete(map);
	}


	@Override
	public List<CalendarList> groupcalendarlist(int userkey, int month, int year) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userkey", userkey);
		String m = month+"";
		if(m.length()==1) {
			m="0"+m;
		}
		String date = year+"-"+m+"%";
		map.put("date", date);
		List<CalendarList> groupcalendarlist = dao.groupcalendarlist(map);
		for(int i = 0 ; i<groupcalendarlist.size(); i++) {
			String d = groupcalendarlist.get(i).getStartdate().substring(8,10);
			if(d.charAt(0)=='0') {
				d = d.replace("0","");
			}
			groupcalendarlist.get(i).setStartdate(d);
		}
		return groupcalendarlist;
	}


	@Override
	public List<Shortschedule> shortschedule(int userkey,int d, int year, int month) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userkey", userkey);
		String day = d+"";
		String m = month+"";
		if(day.length()==1)
			day="0"+day;
		if(m.length()==1)
			m="0"+m;
		String date = year+"-"+m+"-"+day+"%"; 
		map.put("date", date);
		return dao.shortschedule(map);
	}


	@Override
	public List<Shortschedule> shortscheduleSelected(int userkey, String fulldate) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userkey", userkey);
		map.put("fulldate", fulldate);
		return dao.shortscheduleselected(map);
	}


	@Override
	public void groupboardupdate(int groupkey, String boardname, int boardkey, int seq, String boardtype) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("groupkey", groupkey);
		map.put("boardname", boardname);
		map.put("boardkey", boardkey);
		map.put("seq", seq);
		map.put("boardtype", boardtype);
		dao.groupboardupdate(map);
	}


	@Override
	public void groupboardinsert(int groupkey, String boardname, int seq) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("groupkey", groupkey);
		map.put("boardname", boardname);
		map.put("seq", seq);
		dao.groupboardinsert(map);
	}


	@Override
	public void groupboarddelete(int boardkey) {
		dao.groupboarddelete(boardkey);
	}


	@Override
	public GUsers userkey(String id) {
		return dao.userkey(id);
	}

	@Override
	public int groupmasterkey(int groupkey) {
		return dao.groupmasterkey(groupkey);
	}
	
	@Override
	public GGroupMember groupmember(int userkey) {
		GGroupMember groupmember = dao.groupmember(userkey);
		if(userkey!=-1) {
		String date = groupmember.getRegdate();
		String year = date.substring(0,4)+"년 ";  
		String month = date.substring(5,7)+"월 ";
		String day = date.substring(8,10)+"일";
		String tdate = year+month+day;
		groupmember.setRegdate(tdate);
		}
		return groupmember;
	}


	@Override
	public List<UserRegGroup> userreggroup(int userkey) {
		return dao.userreggroup(userkey);
	}
}
