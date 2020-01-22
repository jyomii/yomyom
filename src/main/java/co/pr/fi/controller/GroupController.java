package co.pr.fi.controller;

import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

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

import co.pr.fi.domain.BoardList;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.MeetingList;
import co.pr.fi.domain.MemberList;
import co.pr.fi.service.GroupService;

@Controller
public class GroupController {
	@Autowired
	private GroupService groupservice;

	// @Value("${savefolder}")
	// private String saveFolder;
	@GetMapping("/group_main.net")
	public ModelAndView group_main(ModelAndView mv) {
		int groupkey = 1;
		GGroup group = groupservice.groupInfo(groupkey);
		mv.setViewName("member/groupin_group_main");
		mv.addObject("groupkey", groupkey);
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		mv.addObject("groupname", group.getGroupName());
		mv.addObject("groupdfile", group.getGroupDFile());
		mv.addObject("groupcfile", group.getGroupCFile());
		mv.addObject("groupinfo", group.getGroupInfo());
		GLocation location = groupservice.groupwhere(group.getWhereKey());
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		int age = groupservice.groupage(group.getAgeKey());
		mv.addObject("groupage", age);
		String dcategory = groupservice.groupdcategory(group.getCategoryKey());
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(group.getCategoryKey());
		mv.addObject("groupscategory", scategory);
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		List<BoardList> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		List<MeetingList> groupmeetinglist = groupservice.groupmeetinglist(groupkey);
		mv.addObject("groupmeetinglist", groupmeetinglist);
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/group_main_ajax.net")
	public Object boardListAjax(@RequestParam(value = "postkey") int postkey,
			@RequestParam(value = "groupkey") int groupkey) throws Exception {
		List<MemberList> groupcalendarmemberlist = groupservice.calendarmemberlist(postkey, groupkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("groupcalendarmemberlist", groupcalendarmemberlist);
		return map;
	}

	@PostMapping("/group_mainImgUpdate.net")
	public String groupMainImg(GGroup group, HttpServletRequest request) throws Exception {
		MultipartFile uploadfile = group.getGroupMainImgUpload();

		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();// ���� ���ϸ�
			group.setGroupIdOrigin(fileName);// ���� ���ϸ� ����

			// ���ο� ���� �̸� : ���� ��+��+��
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);// ���� �⵵ ���մϴ�.
			int month = c.get(Calendar.MONTH) + 1;// ���� �� ���մϴ�.
			int date = c.get(Calendar.DATE);// ���� �� ���մϴ�.
			// String saveFolder =
			// request.getSession().getServletContext().getRealPath("resources") +
			// "/upload/";
			String saveFolder = "C:\\Users\\na\\Documents\\workspace-sts-3.9.10.RELEASE\\Final\\src\\main\\webapp\\resources\\upload/";
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
	public String groupImg(GGroup group, HttpServletRequest request) throws Exception {
		MultipartFile uploadfile = group.getGroupImgUpload();

		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();// ���� ���ϸ�
			group.setGroupCOrigin(fileName);// ���� ���ϸ� ����

			// ���ο� ���� �̸� : ���� ��+��+��
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);// ���� �⵵ ���մϴ�.
			int month = c.get(Calendar.MONTH) + 1;// ���� �� ���մϴ�.
			int date = c.get(Calendar.DATE);// ���� �� ���մϴ�.
			// String saveFolder =
			// request.getSession().getServletContext().getRealPath("resources") +
			// "/upload/";
			String saveFolder = "C:\\Users\\na\\Documents\\workspace-sts-3.9.10.RELEASE\\Final\\src\\main\\webapp\\resources\\upload/";
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
		}
		groupservice.groupImgUpdate(group);// ����޼��� ȣ��
		return "redirect:group_main.net";
	}

	@RequestMapping(value = "/group_sheduleList.net", method = RequestMethod.GET)
	public String group_sheduleList() {
		return "member/groupin_group_admin_scheduleList";
	}

	@RequestMapping(value = "/group_freeBoard.net", method = RequestMethod.GET)
	public String group_freeBoard() {
		return "member/groupin_group_freeBoard";
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

	@RequestMapping(value = "/group_admin_board.net", method = RequestMethod.GET)
	public String group_admin_board() {
		return "member/groupin_group_admin_board";
	}

	@RequestMapping(value = "/group_boardWrite.net", method = RequestMethod.GET)
	public String group_boardWrite() {
		return "member/groupin_group_boardWrite";
	}

	/*
	 * @RequestMapping(value = "/login.net", method = RequestMethod.GET) public
	 * ModelAndView login(ModelAndView
	 * mv,@CookieValue(value="saveid",required=false)Cookie readCookie) {
	 * if(readCookie !=null) { mv.addObject("saveid",readCookie.getValue()); }
	 * mv.setViewName("member/loginForm"); return mv; }
	 * 
	 * @RequestMapping(value = "/join.net", method = RequestMethod.GET) public
	 * String join() { return "member/joinForm"; }
	 * 
	 * @RequestMapping(value = "/idcheck.net", method = RequestMethod.GET) public
	 * void idcheck(@RequestParam("id") String id, HttpServletResponse response)
	 * throws Exception { int result = memberservice.isId(id);
	 * response.setContentType("text/html);charset=utf-8"); PrintWriter out =
	 * response.getWriter(); out.print(result); }
	 * 
	 * @RequestMapping(value = "/joinProcess.net", method = RequestMethod.POST)
	 * public void joinProcess(Member member, HttpServletResponse response) throws
	 * Exception { response.setContentType("text/html;charset=utf-8"); PrintWriter
	 * out = response.getWriter(); int result = memberservice.insert(member);
	 * out.println("<script>"); if (result == 1) {
	 * out.println("alert('ȸ�� ������ �����մϴ�.');");
	 * out.println("location.href='login.net';"); } else if (result == -1) {
	 * out.println("alert('���̵� �ߺ��Ǿ����ϴ�. �ٽ� �Է��ϼ���.);"); //
	 * out.println("location.href='./join.net';");//���ΰ�ħ �Ǿ� ����
	 * out.println("history.back()");// ��й�ȣ�� ������ �ٸ� �����ʹ� �����Ǿ� }
	 * out.println("</script>"); out.close(); }
	 * 
	 * // �α��� ó��
	 * 
	 * @RequestMapping(value = "/loginProcess.net", method = RequestMethod.POST)
	 * public String loginProcess(@RequestParam("id") String
	 * id, @RequestParam("password") String
	 * password, @RequestParam(value="remember",defaultValue="") String remember,
	 * HttpServletRequest request,HttpServletResponse response, HttpSession session)
	 * throws Exception { int result = memberservice.isId(id, password);
	 * System.out.println("�����" + result); if (result == 1) { // �α��� ����
	 * session.setAttribute("id", id); //"saveid"��� �̸��� ��Ű�� id�� ���� ������
	 * ��Ű�� �����մϴ�. Cookie savecookie = new Cookie("saveid",id);
	 * if(!remember.equals("")) { savecookie.setMaxAge(60*60);
	 * System.out.println("��Ű���� : 60*60��"); }else{
	 * System.out.println("��Ű���� : 0"); savecookie.setMaxAge(0); }
	 * response.addCookie(savecookie); return "redirect:BoardList.bo"; } else {
	 * String message = "��й�ȣ�� ��ġ���� �ʽ��ϴ�."; if (result == -1) { message =
	 * "���̵� �������� �ʽ��ϴ�."; }
	 * response.setContentType("text/html;charset=utf-8"); PrintWriter out =
	 * response.getWriter(); out.println("<script>"); out.println("alert('" +
	 * message + "');"); out.println("location.href='login.net';");
	 * out.println("</script>"); out.close(); return null; }
	 * 
	 * }
	 * 
	 * @RequestMapping(value = "/member_list.net") public ModelAndView
	 * memberList(@RequestParam(value = "page", defaultValue = "1", required =
	 * false) int page,
	 * 
	 * @RequestParam(value = "limit", defaultValue = "3", required = false) int
	 * limit, ModelAndView mv,
	 * 
	 * @RequestParam(value = "search_field", defaultValue = "-1") int index,
	 * 
	 * @RequestParam(value = "search_word", defaultValue = "") String search_word)
	 * throws Exception {
	 * 
	 * List<Member> list = null; int listcount = 0; list =
	 * memberservice.getSearchList(index, search_word, page, limit); listcount =
	 * memberservice.getSearchListCount(index, search_word);
	 * 
	 * int maxpage = (listcount + limit - 1) / limit; int startpage = ((page - 1) /
	 * 10) * 10 + 1; int endpage = startpage + 10 - 1; if (endpage > maxpage)
	 * endpage = maxpage;
	 * 
	 * mv.setViewName("member/member_list"); mv.addObject("page", page);
	 * mv.addObject("maxpage", maxpage); mv.addObject("startpage", startpage);
	 * mv.addObject("endpage", endpage); mv.addObject("listcount", listcount);
	 * mv.addObject("memberlist", list); mv.addObject("limit", limit);
	 * mv.addObject("search_field", index); mv.addObject("search_word",
	 * search_word);
	 * 
	 * return mv; }
	 * 
	 * @GetMapping("/member_info.net") public ModelAndView memberInfo(String id,
	 * ModelAndView mv, HttpServletRequest request) throws Exception { Member member
	 * = memberservice.member_info(id); if (member == null) {
	 * System.out.println("�󼼺��� ����"); mv.setViewName("error/error");
	 * mv.addObject("url", request.getRequestURL()); mv.addObject("message",
	 * "�󼼺��� �����Դϴ�."); } else { mv.setViewName("member/member_info");
	 * mv.addObject("memberinfo", member); } return mv; }
	 * 
	 * @RequestMapping(value="/member_update.net", method=RequestMethod.GET) public
	 * ModelAndView member_update(HttpSession session, ModelAndView mv) { String id
	 * = (String) session.getAttribute("id"); Member m =
	 * memberservice.member_info(id); mv.setViewName("member/updateForm");
	 * mv.addObject("memberinfo", m);
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/updateProcess.net", method = RequestMethod.POST)
	 * public void updateProcess(Member member, HttpServletResponse response) throws
	 * Exception { response.setContentType("text/html;charset=utf-8"); PrintWriter
	 * out = response.getWriter(); int result = memberservice.update(member);
	 * out.println("<script>"); if (result == 1) {
	 * out.println("alert('�����Ǿ����ϴ�.');");
	 * out.println("location.href='BoardList.bo';"); } else if (result == -1) {
	 * out.println("alert('ȸ������ ������ �����߽��ϴ�.);"); //
	 * out.println("location.href='./join.net';");//���ΰ�ħ �Ǿ� ����
	 * out.println("history.back()");// ��й�ȣ�� ������ �ٸ� �����ʹ� �����Ǿ� }
	 * out.println("</script>"); out.close(); }
	 * 
	 * @GetMapping("/member_delete.net") public String memberdelete(String id,
	 * HttpServletResponse response) throws Exception { int result =
	 * memberservice.delete(id); if(result!=1) {
	 * response.setContentType("text/html;charset=utf-8"); PrintWriter out =
	 * response.getWriter(); out.println("<script>");
	 * out.println("alert('ȸ�� ���� ������ �����߽��ϴ�.');");
	 * out.println("history.back();"); out.println("</script>"); out.close(); return
	 * null; } return "redirect:member_list.net"; }
	 * 
	 * @GetMapping("/logout.net") public String logout(HttpSession session) throws
	 * Exception { session.invalidate(); return "redirect:login.net"; }
	 */

}
