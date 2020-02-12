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
import co.pr.fi.domain.GCalendar;
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
		String year = date.substring(0, 4) + "년 ";
		String month = date.substring(5, 7) + "월 ";
		String day = date.substring(8, 10) + "일";
		String tdate = year + month + day;
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
	public String groupdcategory(int groupkey) {
		return dao.groupdcategory(groupkey);
	}

	@Override
	public String groupscategory(int groupkey) {
		return dao.groupscategory(groupkey);
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
		if (MeetingList.size() > 0) {
			for (int i = 0; i < MeetingList.size(); i++) {
				String date = MeetingList.get(i).getCstartdate();

				String year = date.substring(0, 4) + "년 ";

				String month = date.substring(5, 7) + "월 ";

				String day = date.substring(8, 10) + "일 ";

				String time = date.substring(13, 15) + "시 ";

				String minute = date.substring(16, 18) + "분";
				if (minute.equals("00분"))
					minute = "";
				MeetingList.get(i).setCstartdate(year + month + day + time + minute);
				String pdate = MeetingList.get(i).getPostDate();

				String pyear = pdate.substring(0, 4) + "년 ";

				String pmonth = pdate.substring(5, 7) + "월 ";

				String pday = pdate.substring(8, 10) + "일 ";

				MeetingList.get(i).setPostDate(pyear + pmonth + pday);

				int postkey = MeetingList.get(i).getPostKey();
				Map<String, Integer> map = new HashMap<String, Integer>();
				map.put("postkey", postkey);
				map.put("groupkey", groupkey);
				map.put("userkey", userkey);
				List<CalendarMember> calendarmember = dao.calendarmemberjoinbtn(map);
				if (calendarmember.size() == 0) {
					MeetingList.get(i).setJoinbtn("yes");
				} else {
					MeetingList.get(i).setJoinbtn("no");
				}
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
		String m = month + "";
		if (m.length() == 1) {
			m = "0" + m;
		}
		String date = year + "-" + m + "%";
		map.put("date", date);
		List<CalendarList> groupcalendarlist = dao.groupcalendarlist(map);
		for (int i = 0; i < groupcalendarlist.size(); i++) {
			String d = groupcalendarlist.get(i).getStartdate().substring(8, 10);
			if (d.charAt(0) == '0') {
				d = d.replace("0", "");
			}
			groupcalendarlist.get(i).setStartdate(d);
		}
		return groupcalendarlist;
	}

	@Override
	public List<Shortschedule> shortschedule(int userkey, int d, int year, int month) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userkey", userkey);
		String day = d + "";
		String m = month + "";
		if (day.length() == 1)
			day = "0" + day;
		if (m.length() == 1)
			m = "0" + m;
		String date = year + "-" + m + "-" + day + "%";
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
	public List<UserRegGroup> userreggroup(int userkey) {
		return dao.userreggroup(userkey);
	}

	@Override
	public void addschedule(Post post) {
		dao.addSchedule(post);

	}

	@Override
	public int getgroupboardkey(int groupKey) {
		return dao.getgroupboardkey(groupKey);
	}

	@Override
	public void addschedulecalendar(Post post) {
		post.setStartdate(post.getCstartdate().toString());
		String date = post.getCstartdate().toString().replace(" ", "");
		String year = date.substring(0, 4);
		String month = date.substring(5, date.indexOf("월"));
		if (month.length() == 1) {
			month = "0" + month;
		}
		String day = date.substring((date.indexOf("월") + 1), date.indexOf("일"));
		if (day.length() == 1) {
			day = "0" + day;
		}
		String time = post.getTime();
		String minute = post.getMinute();

		String input = year + "-" + month + "-" + day + " " + time + ":" + minute;
		post.setCstartdate(input);
		dao.addScheduleCalendar(post);

	}

	@Override
	public void updateboardmap(int postkey) {
		dao.updateboardmap(postkey);
	}

	@Override
	public List<GGroup> getGroupRank(int i, int limit, int page) {
		Map<String, Integer> list = new HashMap<String, Integer>();

		int startrow = (page - 1) * limit + 1;
		// �씫湲� �떆�옉�븷 row 踰덊샇(1 11 21 31
		int endrow = startrow + limit - 1;
		// �씫�쓣 留덉�留� row 踰덊샇 (10 20 30

		list.put("type", i);
		list.put("startrow", startrow);
		list.put("endrow", endrow);
		return dao.getGroupRank(list);

	}

	@Override
	public Post modifypost(int postkey) {
		return dao.modifypost(postkey);
	}

	@Override
	public CalendarList modifycalendar(int postkey) {
		return dao.modifycalendar(postkey);
	}

	@Override
	public List<MemberList> modifymember(int postkey) {
		return dao.modifymember(postkey);
	}

	@Override
	public void calendardeleteajax(int temp, int postkey) {
		Map<String, Integer> list = new HashMap<String, Integer>();
		list.put("temp", temp);
		list.put("postkey", postkey);
		dao.calendardeleteajax(list);

	}

	@Override
	public void updateschedule(Post post) {
		dao.updateSchedule(post);

	}

	@Override
	public void updateschedulecalendar(Post post) {
		post.setStartdate(post.getCstartdate().toString());
		String date = post.getCstartdate().toString().replace(" ", "");
		String year = date.substring(0, 4);
		String month = date.substring(5, date.indexOf("월"));
		if (month.length() == 1) {
			month = "0" + month;
		}
		String day = date.substring((date.indexOf("월") + 1), date.indexOf("일"));
		if (day.length() == 1) {
			day = "0" + day;
		}
		String time = post.getTime();
		String minute = post.getMinute();

		String input = year + "-" + month + "-" + day + " " + time + ":" + minute;
		post.setCstartdate(input);
		dao.updateScheduleCalendar(post);
	}

	@Override
	public List<MemberList> modifymemberm(int postkey) {
		return dao.modifymemberm(postkey);
	}

	@Override
	public void calendarstomajax(int temp, int postkey) {
		Map<String, Integer> list = new HashMap<String, Integer>();
		list.put("temp", temp);
		list.put("postkey", postkey);
		dao.calendarstomajax(list);
	}

	@Override
	public void calendarmtosajax(int temp, int postkey) {
		Map<String, Integer> list = new HashMap<String, Integer>();
		list.put("temp", temp);
		list.put("postkey", postkey);
		dao.calendarmtosajax(list);
	}

	@Override
	public int boardListCount(int boardkey) {
		return dao.boardlistcount(boardkey);
	}

	@Override
	public List<Post> getBoardList(int page, int limit, int groupkey) {
		Map<String, Integer> list = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		list.put("start", startrow);
		list.put("end", endrow);
		list.put("groupkey", groupkey);
		return dao.getboardlist(list);
	}

	@Override
	public void scheduledelete(int postkey) {
		dao.scheduledelete(postkey);

	}
	

	
	@Override
	   public GGroupMember groupmember(int userkey, int groupkey) {
	      Map<String, Integer> list = new HashMap<String, Integer>();
	      list.put("userkey", userkey);
	      list.put("groupkey", groupkey);
	      int result = dao.regornot(list);
	      if (result > 0) {
	         GGroupMember groupmember = dao.groupmember(list);
	         if (userkey != -1) {
	            String date = groupmember.getRegdate();
	            String year = date.substring(0, 4) + "년 ";
	            String month = date.substring(5, 7) + "월 ";
	            String day = date.substring(8, 10) + "일";
	            String tdate = year + month + day;
	            groupmember.setRegdate(tdate);
	         }
	         return groupmember;
	      }else {
	         GGroupMember groupmember = dao.groupmember(list);
	         return groupmember;
	      }
	   }

	@Override
	public void groupbasicupdate(GGroup group, int groupkey) {
		Map<String, Object> list = new HashMap<String, Object>();
		list.put("groupprivate", group.getGroupPrivate());
		list.put("groupkatalk", group.getGroupkatalk());
		list.put("groupkey", groupkey);
		dao.groupbasicupdate(list);

	}

	
	@Override
	public List<Post> getBoardListY(int page, int limit, int boardkey) {
		Map<String, Integer> list = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		list.put("start", startrow);
		list.put("end", endrow);
		list.put("boardkey", boardkey);
		List<Post> post=dao.getboardlisty(list);
		for(int i=0;i<post.size();i++) {
			String date = post.get(i).getPostDate();
			String dated = date.replace("-", "");
			String datedd = dated.replace(" ", "");
			String year = datedd.substring(0, 4) + "년 ";
			String month = datedd.substring(4, 6) + "월 ";
			if(month.indexOf("0")==0) {
				month = month.replace("0", "");
			}
			String day = datedd.substring(6, 9) + "일 ";
			if(day.indexOf("0")==0) {
				day = day.replace("0", "");
			}
			String time = datedd.substring(8,datedd.length());
			post.get(i).setPostDate(year+month+day+time);
		}
		return post;
	}

	@Override
	public int getScheduleListCount(int groupkey) {
		return dao.getschedulelistcount(groupkey);
	}

	@Override
	public List<Post> groupafterlist(int groupkey) {
		return dao.groupafterlist(groupkey);
	}
}
