package co.pr.fi.controller;

import java.io.File;
import java.util.ArrayList;
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

import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupBoardList;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.CalendarList;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.Shortschedule;
import co.pr.fi.domain.UserRegGroup;
import co.pr.fi.domain.MemberList;
import co.pr.fi.service.GroupService;

@Controller
public class GroupController {
	@Autowired
	private GroupService groupservice;

	// @Value("${savefolder}")
	// private String saveFolder;
	@GetMapping("/group_main.net")

	public ModelAndView group_main(ModelAndView mv, HttpSession session) {
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
		int groupkey = 1;
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		mv.setViewName("group/groupin_group_main");
		GGroupMember groupmember = groupservice.groupmember(userkey);
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
		int month = 0;
		if (ym2.length() == 6) {
			month = Integer.parseInt(ym2.substring(ym2.length() - 2, ym2.length()));
		} else {
			month = Integer.parseInt(ym2.substring(ym2.length() - 1, ym2.length()));
		}
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
			String fileName = uploadfile.getOriginalFilename();// ���� ���ϸ�
			group.setGroupIdOrigin(fileName);// ���� ���ϸ� ����
			group.setGroupKey(groupKey);
			// ���ο� ���� �̸� : ���� ��+��+��
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);// ���� �⵵ ���մϴ�.
			int month = c.get(Calendar.MONTH) + 1;// ���� �� ���մϴ�.
			int date = c.get(Calendar.DATE);// ���� �� ���մϴ�.
			// String saveFolder =
			// request.getSession().getServletContext().getRealPath("resources") +
			// "/upload/";
			String saveFolder = "C:\\groupin/";
			String homedir = saveFolder + year + "-" + month + "-" + date;
			System.out.println("homedir = " + homedir);
			File path1 = new File(homedir);
			if (!(path1.exists())) {
				path1.mkdir();// ���ο� ���� ����
			}
			// ������ ���մϴ�.
			Random r = new Random();
			int random = r.nextInt(100000000);

			/*** Ȯ���� ���ϱ� ���� ****/
			int index = fileName.lastIndexOf(".");
			// ���ڿ����� Ư�� ���ڿ��� ��ġ ��(index)�� ��ȯ�Ѵ�.
			// indexOf�� ó�� �߰ߵǴ� ���ڿ��� ���� index�� ��ȯ�ϴ� �ݸ�,
			// lastIndexOf�� ���������� �߰ߵǴ� ���ڿ��� index�� ��ȯ�մϴ�.
			// (���ϸ� ���� ������ ���� ��� �� �������� �߰ߵǴ� ���ڿ��� ��ġ�� �����մϴ�.)
			System.out.println("index = " + index);
			String fileExtension = fileName.substring(index + 1);
			System.out.println("fileExtension = " + fileExtension);
			/*** Ȯ���� ���ϱ� �� ***/

			// ���ο� ���ϸ�
			String refileName = "groupMainImg" + year + month + date + random + "." + fileExtension;
			System.out.println("refileName = " + refileName);

			// ����Ŭ ��� ����� ���� ��
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			System.out.println("fileDBName = " + fileDBName);

			// transferTo(File Path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�.
			uploadfile.transferTo(new File(saveFolder + fileDBName));

			// �ٲ� ���ϸ����� ����
			group.setGroupDFile(fileDBName);
		}
		groupservice.groupMainImgUpdate(group);// ����޼��� ȣ��
		return "redirect:group_main.net";
	}

	@PostMapping("/group_ImgUpdate.net")
	public String groupImg(@RequestParam(value = "groupkey") int groupKey, GGroup group, HttpServletRequest request)
			throws Exception {
		MultipartFile uploadfile = group.getGroupImgUpload();

		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();// ���� ���ϸ�
			group.setGroupCOrigin(fileName);// ���� ���ϸ� ����
			group.setGroupKey(groupKey);
			// ���ο� ���� �̸� : ���� ��+��+��
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);// ���� �⵵ ���մϴ�.
			int month = c.get(Calendar.MONTH) + 1;// ���� �� ���մϴ�.
			int date = c.get(Calendar.DATE);// ���� �� ���մϴ�.
			// String saveFolder =
			// request.getSession().getServletContext().getRealPath("resources") +
			// "/upload/";
			String saveFolder = "C:\\groupin/";
			String homedir = saveFolder + year + "-" + month + "-" + date;
			System.out.println("homedir = " + homedir);
			File path1 = new File(homedir);
			if (!(path1.exists())) {
				path1.mkdir();// ���ο� ���� ����
			}
			// ������ ���մϴ�.
			Random r = new Random();
			int random = r.nextInt(100000000);

			/*** Ȯ���� ���ϱ� ���� ****/
			int index = fileName.lastIndexOf(".");
			// ���ڿ����� Ư�� ���ڿ��� ��ġ ��(index)�� ��ȯ�Ѵ�.
			// indexOf�� ó�� �߰ߵǴ� ���ڿ��� ���� index�� ��ȯ�ϴ� �ݸ�,
			// lastIndexOf�� ���������� �߰ߵǴ� ���ڿ��� index�� ��ȯ�մϴ�.
			// (���ϸ� ���� ������ ���� ��� �� �������� �߰ߵǴ� ���ڿ��� ��ġ�� �����մϴ�.)
			System.out.println("index = " + index);
			String fileExtension = fileName.substring(index + 1);
			System.out.println("fileExtension = " + fileExtension);
			/*** Ȯ���� ���ϱ� �� ***/

			// ���ο� ���ϸ�
			String refileName = "groupImg" + year + month + date + random + "." + fileExtension;
			System.out.println("refileName = " + refileName);

			// ����Ŭ ��� ����� ���� ��
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			System.out.println("fileDBName = " + fileDBName);

			// transferTo(File Path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�.
			uploadfile.transferTo(new File(saveFolder + fileDBName));

			// �ٲ� ���ϸ����� ����
			group.setGroupCFile(fileDBName);
			System.out.println("!!!!!" + group.getGroupCFile());
		}
		groupservice.groupImgUpdate(group);// ����޼��� ȣ��
		return "redirect:group_main.net";
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
		GGroupMember groupmember = groupservice.groupmember(userkey);
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
				System.out.println("보드네임" + boardname);
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
	public ModelAndView group_board_transfer(@RequestParam(value = "groupkey") int groupkey, @RequestParam(value = "boardkey") int boardkey, @RequestParam(value = "boardtype") String boardtype, @RequestParam(value = "boardname") String boardname, ModelAndView mv, HttpSession session) {
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
		GGroupMember groupmember = groupservice.groupmember(userkey);
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

	
	@GetMapping("/map")
	public String group_freeBoard() {
		return "exampleMap";
	}
	
	@GetMapping("/upmap")
	public String group_freeBoarsd() {
		return "uploadMap";
	}

	@RequestMapping(value = "/group_reviewBoard.net", method = RequestMethod.GET)
	public String group_reviewBoard() {
		return "member/groupin_group_reviewBoard";
	}

	@RequestMapping(value = "/group_admin.net", method = RequestMethod.GET)
	public String group_admin() {
		return "member/groupin_group_admin";
	}

	@RequestMapping(value = "/group_admin_addSchedule.net", method = RequestMethod.GET)
	public String group_admin_addSchedule() {
		return "member/groupin_group_admin_addSchedule";
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
