
package co.pr.fi.controller;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupBoardList;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.CalendarList;
import co.pr.fi.domain.CalendarMember;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.Maps;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.GCalendar;
import co.pr.fi.domain.GCalendarMemberList;
import co.pr.fi.domain.Shortschedule;
import co.pr.fi.domain.UserRegGroup;
import co.pr.fi.domain.MemberList;
import co.pr.fi.service.GroupBoardService;
import co.pr.fi.service.GroupService;

@Controller
public class GroupController {
	@Autowired
	private GroupService groupservice;
	@Autowired
	private GroupBoardService groupBoardService;
	// @Value("${savefolder}")
	// private String saveFolder;
	
  @GetMapping("/groupRank")
	public ModelAndView groupRank(ModelAndView mv) {
		int limit = 10;
		int page = 1;
		
		List<GGroup> groups = groupservice.getGroupRank(0,limit,page); /*0 : 洹몃９ 硫ㅻ쾭�닔  異뷀썑 �떆媛꾨릺硫� 異붽��옉�뾽*/
		mv.addObject("groups",groups);
		mv.setViewName("group/groupRank");
		return mv;
	}
	
	@ResponseBody
	@PostMapping("/groupRank")
	public List<GGroup> groupRank(int page){
		int limit = 10;

		List<GGroup> groups = groupservice.getGroupRank(0,limit,page);
		return groups;
	}
  
	@GetMapping("/group_main.net")
	public ModelAndView group_main(@RequestParam(value = "groupkey") int groupkey, ModelAndView mv, HttpSession session) {
		String id = "";
		int userkey=-1;
		if(session.getAttribute("id")!=null) {
			id = session.getAttribute("id").toString();
			GUsers guser = groupservice.userkey(id);
			userkey = guser.getUserKey();
			mv.addObject("userkey",userkey);
		}else {
			mv.addObject("userkey",userkey);
		}
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		mv.addObject("groupkey",groupkey);
		mv.setViewName("group/groupin_group_main");
		GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
		mv.addObject("userinfo",groupmember);
		GGroup group = groupservice.groupInfo(groupkey);
		mv.addObject("group", group);
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		int groupmasterkey = groupservice.groupmasterkey(groupkey);
		mv.addObject("groupmasterkey", groupmasterkey);
		GLocation location = groupservice.groupwhere(group.getWhereKey());
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		int age = groupservice.groupage(group.getAgeKey());
		mv.addObject("groupage", age);
		String dcategory = groupservice.groupdcategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupscategory", scategory);
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey,userkey);
		mv.addObject("groupmeetinglist", groupmeetinglist);
		List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey,month,year);
		mv.addObject("groupcalendarlist",groupcalendarlist);
		mv.addObject("groupcalendarlistCount",groupcalendarlist.size());
		List<UserRegGroup> userreggroup = groupservice.userreggroup(userkey);
		mv.addObject("userreggroup", userreggroup);
		mv.addObject("userreggroupcount", userreggroup.size());
		for(int i = 0; i < groupcalendarlist.size();i++) {
			if(Integer.parseInt(groupcalendarlist.get(i).getStartdate())==date) {
				int d = Integer.parseInt(groupcalendarlist.get(i).getStartdate());
				List<Shortschedule> shortschedule = groupservice.shortschedule(userkey, d, year, month);
				mv.addObject("shortschedule", shortschedule);
			}
		}
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/group_main_ajax.net")
	public Object ajaxMemberList(@RequestParam(value = "postkey") int postkey,
			@RequestParam(value = "groupkey") int groupkey) throws Exception {
		groupservice.calendarmemberlist(postkey, groupkey);
		List<MemberList> groupcalendarmemberlist = groupservice.calendarmemberlist(postkey, groupkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("groupcalendarmemberlist", groupcalendarmemberlist);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/group_main_ajaxJoin.net")
	public Object ajaxJoin(@RequestParam(value = "postkey") int postkey, @RequestParam(value = "groupkey") int groupkey,
			@RequestParam(value = "userkey") int userkey) throws Exception {
		groupservice.calendarmemberinsert(postkey, groupkey, userkey);
		List<MemberList> groupcalendarmemberlist = groupservice.calendarmemberlist(postkey, groupkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("groupcalendarmemberlist", groupcalendarmemberlist);
		map.put("currentperson", groupcalendarmemberlist.size());
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/group_main_ajaxJoinCancel.net")
	public Object ajaxJoinCancel(@RequestParam(value = "postkey") int postkey,
			@RequestParam(value = "groupkey") int groupkey, @RequestParam(value = "userkey") int userkey)
			throws Exception {
		groupservice.calendarmemberdelete(postkey, groupkey, userkey);
		List<MemberList> groupcalendarmemberlist = groupservice.calendarmemberlist(postkey, groupkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("groupcalendarmemberlist", groupcalendarmemberlist);
		map.put("currentperson", groupcalendarmemberlist.size());
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/group_main_ajaxCalList.net")
	public Object ajaxCalList(@RequestParam(value = "userkey") int userkey, @RequestParam(value = "date") String date)
			throws Exception {
		String ym = date.replace("년", "");
		String ym1 = ym.replace("월", "");
		String ym2 = ym1.replace(" ", "");
		int year = Integer.parseInt(ym2.substring(0, 4));
		System.out.println("!!!!!!!!!!!"+year);
		int month = 0;
		if (ym2.length() == 6) {
			month = Integer.parseInt(ym2.substring(ym2.length() - 2, ym2.length()));
		} else {
			month = Integer.parseInt(ym2.substring(ym2.length() - 1, ym2.length()));
		}
		System.out.println("!!!!!!!!!!!"+month);
		List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey, month, year);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("groupcalendarlist", groupcalendarlist);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/group_main_shortschedule.net")
	public Object shortSchedule(@RequestParam(value = "userkey") int userkey, @RequestParam(value = "date") String date,
			@RequestParam(value = "day") String day) throws Exception {
		String ym = date.replace("년", "");
		String ym1 = ym.replace("월", "");
		String ym2 = ym1.replace(" ", "");
		String year = ym2.substring(0, 4) + "-";
		String month = "";
		if (ym2.length() == 6) {
			month = ym2.substring(ym2.length() - 2, ym2.length()) + "-";
		} else {
			month = "0" + ym2.substring(ym2.length() - 1, ym2.length()) + "-";
		}
		if (day.length() == 1) {
			day = "0" + day;
		}
		String fulldate = year + month + day + "%";
		List<Shortschedule> shortscheduleSelected = groupservice.shortscheduleSelected(userkey, fulldate);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("shortscheduleSelected", shortscheduleSelected);
		return map;
	}

	@PostMapping("/group_mainImgUpdate.net")
	public String groupMainImg(@RequestParam(value = "groupkey") int groupKey, GGroup group, HttpServletRequest request)
			throws Exception {
		MultipartFile uploadfile = group.getGroupMainImgUpload();

		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();// 占쏙옙占쏙옙 占쏙옙占싹몌옙
			group.setGroupIdOrigin(fileName);// 占쏙옙占쏙옙 占쏙옙占싹몌옙 占쏙옙占쏙옙
			group.setGroupKey(groupKey);
			// 占쏙옙占싸울옙 占쏙옙占쏙옙 占싱몌옙 : 占쏙옙占쏙옙 占쏙옙+占쏙옙+占쏙옙
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);// 占쏙옙占쏙옙 占썩도 占쏙옙占쌌니댐옙.
			int month = c.get(Calendar.MONTH) + 1;// 占쏙옙占쏙옙 占쏙옙 占쏙옙占쌌니댐옙.
			int date = c.get(Calendar.DATE);// 占쏙옙占쏙옙 占쏙옙 占쏙옙占쌌니댐옙.
			// String saveFolder =
			// request.getSession().getServletContext().getRealPath("resources") +
			// "/upload/";
			String saveFolder = "C:\\groupin/";
			String homedir = saveFolder + year + "-" + month + "-" + date;
			System.out.println("homedir = " + homedir);
			File path1 = new File(homedir);
			if (!(path1.exists())) {
				path1.mkdir();// 占쏙옙占싸울옙 占쏙옙占쏙옙 占쏙옙占쏙옙
			}
			// 占쏙옙占쏙옙占쏙옙 占쏙옙占쌌니댐옙.
			Random r = new Random();
			int random = r.nextInt(100000000);

			
			/*** 확占쏙옙占쏙옙 占쏙옙占싹깍옙 占쏙옙占쏙옙 ****/
			int index = fileName.lastIndexOf(".");
			// 占쏙옙占쌘울옙占쏙옙占쏙옙 특占쏙옙 占쏙옙占쌘울옙占쏙옙 占쏙옙치 占쏙옙(index)占쏙옙 占쏙옙환占싼댐옙.
			// indexOf占쏙옙 처占쏙옙 占쌩견되댐옙 占쏙옙占쌘울옙占쏙옙 占쏙옙占쏙옙 index占쏙옙 占쏙옙환占싹댐옙 占쌥몌옙,
			// lastIndexOf占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쌩견되댐옙 占쏙옙占쌘울옙占쏙옙 index占쏙옙 占쏙옙환占쌌니댐옙.
			// (占쏙옙占싹몌옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占� 占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쌩견되댐옙 占쏙옙占쌘울옙占쏙옙 占쏙옙치占쏙옙 占쏙옙占쏙옙占쌌니댐옙.)
			System.out.println("index = " + index);
			String fileExtension = fileName.substring(index + 1);
			System.out.println("fileExtension = " + fileExtension);
			/*** 확占쏙옙占쏙옙 占쏙옙占싹깍옙 占쏙옙 ***/

			// 占쏙옙占싸울옙 占쏙옙占싹몌옙
			String refileName = "groupMainImg" + year + month + date + random + "." + fileExtension;
			System.out.println("refileName = " + refileName);

			// 占쏙옙占쏙옙클 占쏙옙占� 占쏙옙占쏙옙占� 占쏙옙占쏙옙 占쏙옙
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			System.out.println("fileDBName = " + fileDBName);

			// transferTo(File Path) : 占쏙옙占싸듸옙占쏙옙 占쏙옙占쏙옙占쏙옙 占신곤옙占쏙옙占쏙옙占쏙옙 占쏙옙恝占� 占쏙옙占쏙옙占쌌니댐옙.
			uploadfile.transferTo(new File(saveFolder + fileDBName));

			// 占쌕뀐옙 占쏙옙占싹몌옙占쏙옙占쏙옙 占쏙옙占쏙옙
			group.setGroupCFile(fileDBName);
		}
		groupservice.groupMainImgUpdate(group);// 占쏙옙占쏙옙氷占쏙옙占� 호占쏙옙
		return "redirect:group_main.net?groupkey="+groupKey;
	}

	@PostMapping("/group_ImgUpdate.net")
	public String groupImg(@RequestParam(value = "groupkey") int groupKey, GGroup group, HttpServletRequest request)
			throws Exception {
		MultipartFile uploadfile = group.getGroupImgUpload();

		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();// 占쏙옙占쏙옙 占쏙옙占싹몌옙
			group.setGroupCOrigin(fileName);// 占쏙옙占쏙옙 占쏙옙占싹몌옙 占쏙옙占쏙옙
			group.setGroupKey(groupKey);
			// 占쏙옙占싸울옙 占쏙옙占쏙옙 占싱몌옙 : 占쏙옙占쏙옙 占쏙옙+占쏙옙+占쏙옙
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);// 占쏙옙占쏙옙 占썩도 占쏙옙占쌌니댐옙.
			int month = c.get(Calendar.MONTH) + 1;// 占쏙옙占쏙옙 占쏙옙 占쏙옙占쌌니댐옙.
			int date = c.get(Calendar.DATE);// 占쏙옙占쏙옙 占쏙옙 占쏙옙占쌌니댐옙.
			// String saveFolder =
			// request.getSession().getServletContext().getRealPath("resources") +
			// "/upload/";
			String saveFolder = "C:\\groupin/";
			String homedir = saveFolder + year + "-" + month + "-" + date;
			System.out.println("homedir = " + homedir);
			File path1 = new File(homedir);
			if (!(path1.exists())) {
				path1.mkdir();// 占쏙옙占싸울옙 占쏙옙占쏙옙 占쏙옙占쏙옙
			}
			// 占쏙옙占쏙옙占쏙옙 占쏙옙占쌌니댐옙.
			Random r = new Random();
			int random = r.nextInt(100000000);

			/*** 확占쏙옙占쏙옙 占쏙옙占싹깍옙 占쏙옙占쏙옙 ****/
			int index = fileName.lastIndexOf(".");
			// 占쏙옙占쌘울옙占쏙옙占쏙옙 특占쏙옙 占쏙옙占쌘울옙占쏙옙 占쏙옙치 占쏙옙(index)占쏙옙 占쏙옙환占싼댐옙.
			// indexOf占쏙옙 처占쏙옙 占쌩견되댐옙 占쏙옙占쌘울옙占쏙옙 占쏙옙占쏙옙 index占쏙옙 占쏙옙환占싹댐옙 占쌥몌옙,
			// lastIndexOf占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쌩견되댐옙 占쏙옙占쌘울옙占쏙옙 index占쏙옙 占쏙옙환占쌌니댐옙.
			// (占쏙옙占싹몌옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占� 占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쌩견되댐옙 占쏙옙占쌘울옙占쏙옙 占쏙옙치占쏙옙 占쏙옙占쏙옙占쌌니댐옙.)
			System.out.println("index = " + index);
			String fileExtension = fileName.substring(index + 1);
			System.out.println("fileExtension = " + fileExtension);
			/*** 확占쏙옙占쏙옙 占쏙옙占싹깍옙 占쏙옙 ***/

			// 占쏙옙占싸울옙 占쏙옙占싹몌옙
			String refileName = "groupImg" + year + month + date + random + "." + fileExtension;
			System.out.println("refileName = " + refileName);

			// 占쏙옙占쏙옙클 占쏙옙占� 占쏙옙占쏙옙占� 占쏙옙占쏙옙 占쏙옙
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			System.out.println("fileDBName = " + fileDBName);

			// transferTo(File Path) : 占쏙옙占싸듸옙占쏙옙 占쏙옙占쏙옙占쏙옙 占신곤옙占쏙옙占쏙옙占쏙옙 占쏙옙恝占� 占쏙옙占쏙옙占쌌니댐옙.
			uploadfile.transferTo(new File(saveFolder + fileDBName));

			// 占쌕뀐옙 占쏙옙占싹몌옙占쏙옙占쏙옙 占쏙옙占쏙옙
			
			group.setGroupDFile(fileDBName);
			System.out.println("!!!!!" + group.getGroupCFile());
		}
		groupservice.groupImgUpdate(group);// 占쏙옙占쏙옙氷占쏙옙占� 호占쏙옙
		return "redirect:group_main.net?groupkey="+groupKey;
	}

	@GetMapping("groupin_group_admin_board.net")
	public ModelAndView group_admin_board(@RequestParam(value = "groupkey") int groupkey, ModelAndView mv, HttpSession session) {
		String id = "";
		int userkey=-1;
		if(session.getAttribute("id")!=null) {
			id = session.getAttribute("id").toString();
			GUsers guser = groupservice.userkey(id);
			userkey = guser.getUserKey();
			mv.addObject("userkey",userkey);
		}else {
			mv.addObject("userkey",userkey);
		}
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		mv.setViewName("group/groupin_group_admin_board");
		GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
		mv.addObject("userinfo",groupmember);
		GGroup group = groupservice.groupInfo(groupkey);
		mv.addObject("group", group);
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		int groupmasterkey = groupservice.groupmasterkey(groupkey);
		mv.addObject("groupmasterkey", groupmasterkey);
		GLocation location = groupservice.groupwhere(group.getWhereKey());
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		int age = groupservice.groupage(group.getAgeKey());
		mv.addObject("groupage", age);
		String dcategory = groupservice.groupdcategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupscategory", scategory);
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		mv.addObject("groupboardlistcount", groupboardlist.size());
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey,userkey);
		mv.addObject("groupmeetinglist", groupmeetinglist);
		List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey,month,year);
		mv.addObject("groupcalendarlist",groupcalendarlist);
		mv.addObject("groupcalendarlistCount",groupcalendarlist.size());
		List<UserRegGroup> userreggroup = groupservice.userreggroup(userkey);
		mv.addObject("userreggroup", userreggroup);
		mv.addObject("userreggroupcount", userreggroup.size());
		for(int i = 0; i < groupcalendarlist.size();i++) {
			if(Integer.parseInt(groupcalendarlist.get(i).getStartdate())==date) {
				int d = Integer.parseInt(groupcalendarlist.get(i).getStartdate());
				List<Shortschedule> shortschedule = groupservice.shortschedule(userkey, d, year, month);
				mv.addObject("shortschedule", shortschedule);
			}
		}
		return mv;
	}

	@PostMapping("/boardSetting.net")
	public String boardSetting(@RequestParam(value = "groupkey") int groupkey, GGroupBoardList list) {
		for (int i = 0; i < list.getGgroupboardlist().size(); i++) {
			if (list.getGgroupboardlist().get(i).getBoardKey() != -1) {
				String boardname = list.getGgroupboardlist().get(i).getBoardName();
				int boardkey = list.getGgroupboardlist().get(i).getBoardKey();
				int seq = list.getGgroupboardlist().get(i).getBoardSeq();
				String boardtype = list.getGgroupboardlist().get(i).getBoardType();
				groupservice.groupboardupdate(groupkey, boardname, boardkey, seq, boardtype);
			} else {
				String boardname = list.getGgroupboardlist().get(i).getBoardName();
				int seq = list.getGgroupboardlist().get(i).getBoardSeq();
				groupservice.groupboardinsert(groupkey, boardname, seq);
			}
		}
		return "redirect:groupin_group_admin_board.net?groupkey=" + groupkey;
	}

	@GetMapping("/boardDelete.net")
	public String boardDelete(@RequestParam(value = "boardkey") int boardkey,
			@RequestParam(value = "groupkey") int groupkey) {
		groupservice.groupboarddelete(boardkey);
		return "redirect:groupin_group_admin_board.net?groupkey=" + groupkey;
	}

	@GetMapping("/groupin_group_board_transfer.net")
	public ModelAndView group_board_transfer(@RequestParam(value = "groupkey") int groupkey, @RequestParam(value = "boardkey") int boardkey, @RequestParam(value = "boardtype") String boardtype, @RequestParam(value = "boardname") String boardname,@RequestParam(value = "page", defaultValue = "1", required = false) int page, ModelAndView mv, HttpSession session) {
		int userkey=-1;
		String id="";
		if(session.getAttribute("id")!=null) {
			id = session.getAttribute("id").toString();
			GUsers guser = groupservice.userkey(id);
			userkey = guser.getUserKey();
			mv.addObject("userkey",userkey);
		}else {
			mv.addObject("userkey",userkey);
		}
		if(boardtype.equals("N")) {
			mv.setViewName("group/groupin_group_schedulelist");
			mv.addObject("boardtype",boardtype);
			int limit = 7;
			int listcount = groupservice.getScheduleListCount(boardkey);
			int maxpage = (listcount + limit - 1) / limit;
			int startpage = ((page - 1) / 10) * 10 + 1;
			int endpage = startpage + 10 - 1;
			if (endpage > maxpage)
				endpage = maxpage;
			List<Post> postlist = groupservice.getBoardList(page, limit, groupkey);
			mv.addObject("page", page);
			mv.addObject("maxpage", maxpage);
			mv.addObject("startpage", startpage);
			mv.addObject("endpage", endpage);
			mv.addObject("listcount", listcount);
			mv.addObject("postlist", postlist);
			mv.addObject("limit", limit);
		}else if(boardtype.equals("Y")) {
			mv.setViewName("group/groupin_group_boardlist");
			mv.addObject("boardtype",boardtype);
		}else {
			mv.setViewName("group/groupin_group_boardlist");
			mv.addObject("boardtype",boardtype);
		}
		mv.addObject("boardname",boardname);
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
		mv.addObject("userinfo",groupmember);
		GGroup group = groupservice.groupInfo(groupkey);
		mv.addObject("group", group);
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		int groupmasterkey = groupservice.groupmasterkey(groupkey);
		mv.addObject("groupmasterkey", groupmasterkey);
		GLocation location = groupservice.groupwhere(group.getWhereKey());
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		int age = groupservice.groupage(group.getAgeKey());
		mv.addObject("groupage", age);
		String dcategory = groupservice.groupdcategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupscategory", scategory);
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey,userkey);
		mv.addObject("groupmeetinglist", groupmeetinglist);
		List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey,month,year);
		mv.addObject("groupcalendarlist",groupcalendarlist);
		mv.addObject("groupcalendarlistCount",groupcalendarlist.size());
		List<UserRegGroup> userreggroup = groupservice.userreggroup(userkey);
		mv.addObject("userreggroup", userreggroup);
		mv.addObject("userreggroupcount", userreggroup.size());
		for(int i = 0; i < groupcalendarlist.size();i++) {
			if(Integer.parseInt(groupcalendarlist.get(i).getStartdate())==date) {
				int d = Integer.parseInt(groupcalendarlist.get(i).getStartdate());
				List<Shortschedule> shortschedule = groupservice.shortschedule(userkey, d, year, month);
				mv.addObject("shortschedule", shortschedule);
			}
		}
		return mv;
	}

	@GetMapping("/groupin_group_admin_scheduleList.net")
	public ModelAndView group_admin_scheduleList(@RequestParam(value = "page", defaultValue = "1", required = false) int page,@RequestParam(value = "groupkey") int groupkey, ModelAndView mv, HttpSession session) {
		String id = "";
		int userkey=-1;
		if(session.getAttribute("id")!=null) {
			id = session.getAttribute("id").toString();
			GUsers guser = groupservice.userkey(id);
			userkey = guser.getUserKey();
			mv.addObject("userkey",userkey);
		}else {
			mv.addObject("userkey",userkey);
		}
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		mv.setViewName("group/groupin_group_admin_scheduleList");
		int limit = 6;
		int listcount = groupservice.getScheduleListCount(groupkey);
		int maxpage = (listcount + limit - 1) / limit;
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 - 1;
		if (endpage > maxpage)
			endpage = maxpage;
		System.err.println(limit);
		List<Post> postlist = groupservice.getBoardList(page, limit, groupkey);
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("groupmeetinglist", postlist);
		mv.addObject("limit", limit);
		GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
		mv.addObject("userinfo",groupmember);
		GGroup group = groupservice.groupInfo(groupkey);
		mv.addObject("group", group);
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		int groupmasterkey = groupservice.groupmasterkey(groupkey);
		mv.addObject("groupmasterkey", groupmasterkey);
		GLocation location = groupservice.groupwhere(group.getWhereKey());
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		int age = groupservice.groupage(group.getAgeKey());
		mv.addObject("groupage", age);
		String dcategory = groupservice.groupdcategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupscategory", scategory);
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		//List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey,userkey);
		//mv.addObject("groupmeetinglist", groupmeetinglist);
		List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey,month,year);
		mv.addObject("groupcalendarlist",groupcalendarlist);
		mv.addObject("groupcalendarlistCount",groupcalendarlist.size());
		List<UserRegGroup> userreggroup = groupservice.userreggroup(userkey);
		mv.addObject("userreggroup", userreggroup);
		mv.addObject("userreggroupcount", userreggroup.size());
		for(int i = 0; i < groupcalendarlist.size();i++) {
			if(Integer.parseInt(groupcalendarlist.get(i).getStartdate())==date) {
				int d = Integer.parseInt(groupcalendarlist.get(i).getStartdate());
				List<Shortschedule> shortschedule = groupservice.shortschedule(userkey, d, year, month);
				mv.addObject("shortschedule", shortschedule);
			}
		}
		return mv;
	}
	
	@GetMapping("/groupin_group_admin_addSchedule.net")
	public ModelAndView group_admin_addSchedule(@RequestParam(value = "groupkey") int groupkey, ModelAndView mv, HttpSession session) {
		String id = "";
		int userkey=-1;
		if(session.getAttribute("id")!=null) {
			id = session.getAttribute("id").toString();
			GUsers guser = groupservice.userkey(id);
			userkey = guser.getUserKey();
			mv.addObject("userkey",userkey);
		}else {
			mv.addObject("userkey",userkey);
		}
		groupkey = 1;
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		mv.setViewName("group/groupin_group_admin_addSchedule");
		GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
		mv.addObject("userinfo",groupmember);
		GGroup group = groupservice.groupInfo(groupkey);
		mv.addObject("group", group);
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		int groupmasterkey = groupservice.groupmasterkey(groupkey);
		mv.addObject("groupmasterkey", groupmasterkey);
		GLocation location = groupservice.groupwhere(group.getWhereKey());
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		int age = groupservice.groupage(group.getAgeKey());
		mv.addObject("groupage", age);
		String dcategory = groupservice.groupdcategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupscategory", scategory);
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey,userkey);
		mv.addObject("groupmeetinglist", groupmeetinglist);
		List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey,month,year);
		mv.addObject("groupcalendarlist",groupcalendarlist);
		mv.addObject("groupcalendarlistCount",groupcalendarlist.size());
		List<UserRegGroup> userreggroup = groupservice.userreggroup(userkey);
		mv.addObject("userreggroup", userreggroup);
		mv.addObject("userreggroupcount", userreggroup.size());
		for(int i = 0; i < groupcalendarlist.size();i++) {
			if(Integer.parseInt(groupcalendarlist.get(i).getStartdate())==date) {
				int d = Integer.parseInt(groupcalendarlist.get(i).getStartdate());
				List<Shortschedule> shortschedule = groupservice.shortschedule(userkey, d, year, month);
				mv.addObject("shortschedule", shortschedule);
			}
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/addSchedule.net")
	public Object addScheduleAjax(Post post, HttpSession session) throws JsonParseException, JsonMappingException, IOException {
		String id = session.getAttribute("id").toString();
		GUsers guser = groupservice.userkey(id);
		int userkey = guser.getUserKey();
		post.setUserKey(userkey);
		int gboardkey = groupservice.getgroupboardkey(post.getGroupKey());
		post.setBoardKey(gboardkey);
		groupservice.addschedule(post);
		int postkey = post.getPostKey();
		groupservice.addschedulecalendar(post);
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("postkey", postkey);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/updateSchedule.net")
	public void updateScheduleAjax(Post post, HttpSession session) throws JsonParseException, JsonMappingException, IOException {
		String id = session.getAttribute("id").toString();
		GUsers guser = groupservice.userkey(id);
		int userkey = guser.getUserKey();
		post.setUserKey(userkey);
		int gboardkey = groupservice.getgroupboardkey(post.getGroupKey());
		post.setBoardKey(gboardkey);
		groupservice.updateschedule(post);
		groupservice.updateschedulecalendar(post);
	}
	
	@GetMapping("/groupin_group_admin_modifySchedule.net")
	public ModelAndView group_admin_modifySchedule(@RequestParam(value = "groupkey") int groupkey, @RequestParam(value = "postkey") int postkey, ModelAndView mv, HttpSession session) {
		String id = "";
		int userkey=-1;
		if(session.getAttribute("id")!=null) {
			id = session.getAttribute("id").toString();
			GUsers guser = groupservice.userkey(id);
			userkey = guser.getUserKey();
			mv.addObject("userkey",userkey);
		}else {
			mv.addObject("userkey",userkey);
		}
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		mv.setViewName("group/groupin_group_admin_modifySchedule");
		GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
		mv.addObject("userinfo",groupmember);
		GGroup group = groupservice.groupInfo(groupkey);
		mv.addObject("group", group);
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		int groupmasterkey = groupservice.groupmasterkey(groupkey);
		mv.addObject("groupmasterkey", groupmasterkey);
		GLocation location = groupservice.groupwhere(group.getWhereKey());
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		int age = groupservice.groupage(group.getAgeKey());
		mv.addObject("groupage", age);
		String dcategory = groupservice.groupdcategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupscategory", scategory);
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey,userkey);
		mv.addObject("groupmeetinglist", groupmeetinglist);
		List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey,month,year);
		mv.addObject("groupcalendarlist",groupcalendarlist);
		mv.addObject("groupcalendarlistCount",groupcalendarlist.size());
		List<UserRegGroup> userreggroup = groupservice.userreggroup(userkey);
		mv.addObject("userreggroup", userreggroup);
		mv.addObject("userreggroupcount", userreggroup.size());
		for(int i = 0; i < groupcalendarlist.size();i++) {
			if(Integer.parseInt(groupcalendarlist.get(i).getStartdate())==date) {
				int d = Integer.parseInt(groupcalendarlist.get(i).getStartdate());
				List<Shortschedule> shortschedule = groupservice.shortschedule(userkey, d, year, month);
				mv.addObject("shortschedule", shortschedule);
			}
		}
		Post modifypost = groupservice.modifypost(postkey);
		mv.addObject("modifypost",modifypost);
		CalendarList modifycalendar = groupservice.modifycalendar(postkey);
		mv.addObject("modifycalendar",modifycalendar);
		List<MemberList> modifymember = groupservice.modifymember(postkey);
		List<MemberList> modifymemberm = groupservice.modifymemberm(postkey);
		mv.addObject("modifymember",modifymember);
		mv.addObject("modifymembercount",modifymember.size());
		mv.addObject("modifymemberm",modifymemberm);
		mv.addObject("modifymembercountm",modifymemberm.size());
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/slistajax.net")
	public Object ajaxSlist( @RequestParam(value="Array[]") List<Integer> list, @RequestParam(value="postkey") int postkey)
			throws Exception {
		for(int i = 0; i<list.size();i++) {
			groupservice.calendardeleteajax(list.get(i), postkey);
		}
		List<MemberList> modifymember = groupservice.modifymember(postkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("modifymember", modifymember);
		map.put("modifymembercount", modifymember.size());
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/slistajaxlist.net")
	public Object ajaxSlistlist(@RequestParam(value="postkey") int postkey)
			throws Exception {
		List<MemberList> modifymember = groupservice.modifymember(postkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("modifymember", modifymember);
		map.put("modifymembercount", modifymember.size());
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mlistajax.net")
	public Object ajaxMlist( @RequestParam(value="Array[]") List<Integer> list, @RequestParam(value="postkey") int postkey)
			throws Exception {
		for(int i = 0; i<list.size();i++) {
			groupservice.calendardeleteajax(list.get(i), postkey);
		}
		List<MemberList> modifymemberm = groupservice.modifymemberm(postkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("modifymemberm", modifymemberm);
		map.put("modifymembercountm", modifymemberm.size());
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mlistajaxlist.net")
	public Object ajaxMlistlist(@RequestParam(value="postkey") int postkey)
			throws Exception {
		List<MemberList> modifymemberm = groupservice.modifymemberm(postkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("modifymemberm", modifymemberm);
		map.put("modifymembercountm", modifymemberm.size());
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/stomlistajax.net")
	public Object ajaxStomlist( @RequestParam(value="Array[]") List<Integer> list, @RequestParam(value="postkey") int postkey)
			throws Exception {
		for(int i = 0; i<list.size();i++) {
			groupservice.calendarstomajax(list.get(i), postkey);
		}
		List<MemberList> modifymember = groupservice.modifymember(postkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("modifymember", modifymember);
		map.put("modifymembercount", modifymember.size());
		return map;
	}
	@ResponseBody
	@RequestMapping(value = "/mtoslistajax.net")
	public Object ajaxMtoslist( @RequestParam(value="Array[]") List<Integer> list, @RequestParam(value="postkey") int postkey)
			throws Exception {
		for(int i = 0; i<list.size();i++) {
			groupservice.calendarmtosajax(list.get(i), postkey);
		}
		List<MemberList> modifymemberm = groupservice.modifymemberm(postkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("modifymemberm", modifymemberm);
		map.put("modifymembercountm", modifymemberm.size());
		return map;
	}
	
	 @GetMapping("/schedulemaps.net")
		public ModelAndView schedulemaps(@RequestParam(value="postkey") int postkey, ModelAndView mv, HttpSession session) {
			String id = "";
			int groupkey=1;
			int userkey=-1;
			if(session.getAttribute("id")!=null) {
				id = session.getAttribute("id").toString();
				GUsers guser = groupservice.userkey(id);
				userkey = guser.getUserKey();
				mv.addObject("userkey",userkey);
			}else {
				mv.addObject("userkey",userkey);
			}
			Calendar c = Calendar.getInstance();
			int month = c.get(Calendar.MONTH) + 1;
			int year = c.get(Calendar.YEAR);
			int date = c.get(Calendar.DATE);
			mv.setViewName("group/groupin_group_scheduleMap");
			GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
			mv.addObject("userinfo",groupmember);
			GGroup group = groupservice.groupInfo(groupkey);
			mv.addObject("group", group);
			String groupmaster = groupservice.groupmaster(groupkey);
			mv.addObject("groupmaster", groupmaster);
			int groupmasterkey = groupservice.groupmasterkey(groupkey);
			mv.addObject("groupmasterkey", groupmasterkey);
			GLocation location = groupservice.groupwhere(group.getWhereKey());
			mv.addObject("groupswhere", location.getSWhere());
			mv.addObject("groupdwhere", location.getDWhere());
			int age = groupservice.groupage(group.getAgeKey());
			mv.addObject("groupage", age);
			String dcategory = groupservice.groupdcategory(group.getCategoryKey(),groupkey);
			mv.addObject("groupdcategory", dcategory);
			String scategory = groupservice.groupscategory(group.getCategoryKey(),groupkey);
			mv.addObject("groupscategory", scategory);
			int groupmembers = groupservice.groupmembers(groupkey);
			mv.addObject("groupmembers", groupmembers);
			List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
			mv.addObject("groupboardlist", groupboardlist);
			List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
			mv.addObject("groupmemberlist", groupmemberlist);
			List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey,userkey);
			mv.addObject("groupmeetinglist", groupmeetinglist);
			List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey,month,year);
			mv.addObject("groupcalendarlist",groupcalendarlist);
			mv.addObject("groupcalendarlistCount",groupcalendarlist.size());
			List<UserRegGroup> userreggroup = groupservice.userreggroup(userkey);
			mv.addObject("userreggroup", userreggroup);
			mv.addObject("userreggroupcount", userreggroup.size());
			for(int i = 0; i < groupcalendarlist.size();i++) {
				if(Integer.parseInt(groupcalendarlist.get(i).getStartdate())==date) {
					int d = Integer.parseInt(groupcalendarlist.get(i).getStartdate());
					List<Shortschedule> shortschedule = groupservice.shortschedule(userkey, d, year, month);
					mv.addObject("shortschedule", shortschedule);
				}
			}
			mv.addObject("postkey", postkey);
			return mv;
		}
	
	@GetMapping("/map")
	public String group_freeBoard() {
		return "exampleMap";
	}
	
	@GetMapping("/upmap")
	public String group_freeBoarsd() {
		return "uploadMap";
	}

	@GetMapping("/groupin_group_admin.net")
	public ModelAndView group_admin(@RequestParam(value="groupkey") int groupkey, ModelAndView mv, HttpSession session) {
		String id = "";
		int userkey=-1;
		if(session.getAttribute("id")!=null) {
			id = session.getAttribute("id").toString();
			GUsers guser = groupservice.userkey(id);
			userkey = guser.getUserKey();
			mv.addObject("userkey",userkey);
		}else {
			mv.addObject("userkey",userkey);
		}
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		mv.setViewName("group/groupin_group_admin");
		GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
		mv.addObject("userinfo",groupmember);
		GGroup group = groupservice.groupInfo(groupkey);
		mv.addObject("group", group);
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		int groupmasterkey = groupservice.groupmasterkey(groupkey);
		mv.addObject("groupmasterkey", groupmasterkey);
		GLocation location = groupservice.groupwhere(group.getWhereKey());
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		int age = groupservice.groupage(group.getAgeKey());
		mv.addObject("groupage", age);
		String dcategory = groupservice.groupdcategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(group.getCategoryKey(),groupkey);
		mv.addObject("groupscategory", scategory);
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey,userkey);
		mv.addObject("groupmeetinglist", groupmeetinglist);
		List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey,month,year);
		mv.addObject("groupcalendarlist",groupcalendarlist);
		mv.addObject("groupcalendarlistCount",groupcalendarlist.size());
		List<UserRegGroup> userreggroup = groupservice.userreggroup(userkey);
		mv.addObject("userreggroup", userreggroup);
		mv.addObject("userreggroupcount", userreggroup.size());
		for(int i = 0; i < groupcalendarlist.size();i++) {
			if(Integer.parseInt(groupcalendarlist.get(i).getStartdate())==date) {
				int d = Integer.parseInt(groupcalendarlist.get(i).getStartdate());
				List<Shortschedule> shortschedule = groupservice.shortschedule(userkey, d, year, month);
				mv.addObject("shortschedule", shortschedule);
			}
		}
		return mv;
	}

	
	@GetMapping("/groupin_group_admin_deleteSchedule.net")
	public String scheduleDelete(@RequestParam(value = "postkey") int postkey,@RequestParam(value = "groupkey") int groupkey) {
		groupservice.scheduledelete(postkey);
		return "redirect:groupin_group_admin_scheduleList.net?groupkey=" + groupkey;
	}

	@PostMapping("/basicsetting.net")
	public String basicsetting(@RequestParam(value = "groupkey") int groupkey, GGroup group, HttpServletRequest request)
			throws Exception {
		groupservice.groupbasicupdate(group, groupkey);
		System.out.println(group.getGroupkatalk());
		System.out.println(group.getGroupPrivate());
		return "redirect:groupin_group_admin.net?groupkey="+groupkey;
	}
	
	@RequestMapping(value = "/group_admin_modifySchedule.net", method = RequestMethod.GET)
	public String group_admin_modifySchedule() {
		return "member/groupin_group_admin_modifySchedule";
	}

	@RequestMapping(value = "/group_admin_members.net", method = RequestMethod.GET)
	public String group_admin_members() {
		return "member/groupin_group_admin_members";
	}

	@RequestMapping(value = "/group_boardWrite.net", method = RequestMethod.GET)
	public String group_boardWrite() {
		return "member/groupin_group_boardWrite";
	}

}

