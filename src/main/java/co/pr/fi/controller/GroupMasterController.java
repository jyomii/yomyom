package co.pr.fi.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.RequestCategory;
import co.pr.fi.service.CategoryService;
import co.pr.fi.service.GroupMasterService;
import co.pr.fi.service.GroupMemberService;
import co.pr.fi.service.MemberService;

@Controller
public class GroupMasterController {
	@Autowired
	GroupMasterService groupMasterService;

	@Autowired
	MemberService memberService;

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	GroupMemberService groupMemberService;
	
	// 새로운 모임 생성
	@PostMapping("/insertGroup")
	public void insertGroup(GGroup group, @RequestParam(value = "files") MultipartFile[] files, HttpSession session,
			HttpServletResponse resp) throws IllegalStateException, IOException {

		String filePath = "C:/groupin"; // 파일 저장 경로, 설정파일로 따로 관리한다.

		File dir = new File(filePath); // 파일 저장 경로 확인, 없으면 만든다.
		if (!dir.exists()) {
			dir.mkdirs();
		}

		for (int i = 0; i < files.length; i++) {

			MultipartFile uploadfile = files[i];

			if (!uploadfile.isEmpty()) {

				String fileName = uploadfile.getOriginalFilename(); // 원래 파일 명

				if (i == 0)
					group.setGroupIdOrigin(fileName); // 대표사진 저장
				else
					group.setGroupCOrigin(fileName); // 커버사진 저장

				// 새로운 폴더 이름 : 오늘 년, 월, 일
				Calendar c = Calendar.getInstance();
				int year = c.get(Calendar.YEAR);
				int month = c.get(Calendar.MONTH) + 1;
				int date = c.get(Calendar.DATE);

				// 이 경로에 파일을 저장할거임
				// 이클립스가 관리하는 경로
				String saveFolder = filePath + "/";

				String homedir = saveFolder + year + "-" + month + "-" + date;

				System.out.println(homedir);

				File path1 = new File(homedir);
				if (!(path1.exists())) { // 이 파일의 경로가 존재하는지 확인
					path1.mkdir(); // 없을 경우 경로 만들기
				}

				// 난수를 구합니다. 사용자가 올린 파일의 이름이 중복되면 안되니까
				Random r = new Random();
				int random = r.nextInt(100000000);

				/* 확장자 구하기 시작 //// 원래 파일의 형식이 .png / .jpg / 같은 형식일거니까 */
				int index = fileName.lastIndexOf(".");
				/*
				 * 문자열에서 특정 문자열의 위치 값을 반환한다. indexOf가 처음 발견되는 문자열에 대한 index를 반환하는 반면,
				 * lastIndexOf는 마지막으로 발견되는 문자열의 index를 반환합니다. (파일명에 점이 여러개 있을 경우 맨 마지막에 발견되는
				 * 문자열의 위치를 리턴합니다.)
				 */

				/*
				 * 문자열에서 특정 문자열의 위치 값을 반환한다. indexOf가 처음 발견되는 문자열에 대한 index를 반환하는 반면, lastIndex는
				 * 마지막으로 발견되는 문자열ㅇ릐 index를 반환함
				 */

				System.out.println("index = " + index);

				String fileExtension = fileName.substring(index + 1); // 확장자만 따로 뻄
				System.out.println("fileExtension = " + fileExtension);
				/* 확장자 구하기 끝 */

				// 새로운 파일명
				String refileName = "group" + year + month + date + random + "." + fileExtension;

				System.out.println("refileName = " + refileName);

				// 오라클 디비에 저장될 파일명
				String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
				System.out.println("fileDbName = " + fileDBName);

				// transferTo(File path) : 업로한 파일의 매개변수의 경로에 저장합니다.
				uploadfile.transferTo(new File(saveFolder + fileDBName));

				// 바뀐 파일명으로 저장
				if (i == 0)
					group.setGroupDFile(fileDBName); // 대표사진 저장
				else
					group.setGroupCFile(fileDBName);
			}

		}
		System.out.println(group);

		GUsers user = memberService.getUsers((String) session.getAttribute("id"));
		group.setUserKey(user.getUserKey());

		if (group.getGroupPrivate() == null)
			group.setGroupPrivate("N");
		else
			group.setGroupPrivate("Y");

		// 원데이 클래스 여부
		if (group.getGroupType() == null) {
			group.setGroupType("Y");
			group.setGroupstatus(0);
		} else {
			// 원데이 클래스일 경우 관리자에게 승인을 받아야함
			group.setGroupstatus(1);
			group.setGroupType("N");

		}
		

		int result = groupMasterService.insertGroup(group);

		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<script>");
		if (result > 0) {

			GGroupMember member = new GGroupMember();
			member.setGroupKey(group.getGroupKey());
			member.setUserKey(user.getUserKey());
			member.setGroupNickname("모임장");
			member.setUserGrade(1);
			// 일반: 0 // 모임장: 1 // 모임가입예정 : -1

			groupMasterService.insertGroupMember(member);

			if (group.getGroupstatus() == 0) {
				out.print("alert('모임이 생성되었습니다.');");
				out.print("location.href='group_main.net?groupkey="+group.getGroupKey()+"';");
			} else {
				out.print("alert('원데이 클래스 모임은 관리자의 승인 후 모임이 생성됩니다.');");
				out.print("location.href='main2';");
			}
			// 기본적으로 공지사항 게시판 생성
			GGroupBoard noticeBoard = new GGroupBoard();
			noticeBoard.setGroupKey(group.getGroupKey());
			noticeBoard.setBoardName("공지사항 게시판");
			noticeBoard.setBoardType("G");

			groupMasterService.insertGroupBoard(noticeBoard);

			// 기본적으로 모임일정 게시판 생성
			GGroupBoard groupBoard = new GGroupBoard();
			groupBoard.setGroupKey(group.getGroupKey());
			groupBoard.setBoardName("모임 일정 게시판");
			groupBoard.setBoardType("N");

			groupMasterService.insertGroupBoard(groupBoard);

		} else {
			out.print("alert('모임 생성에 실패했습니다.');history.back();");
		}
		out.print("</script>");
		out.close();

	}

	// 새로운 모임 이름 체크
	@ResponseBody
	@PostMapping("/checkGroupName")
	public int checkGroupName(String name) {

		return groupMasterService.checkGroupName(name);

	}

	// 모임 생성 시 카테고리 요청
	@ResponseBody
	@RequestMapping("/UserRequestCategory")
	public int UserRequestCategory(@RequestParam(value = "dname", required = false) String dname,
			@RequestParam(value = "sname", required = false) String sname, HttpSession session) throws IOException {

		GUsers user = memberService.getUsers((String) session.getAttribute("id"));
		int result = 0;
		if (sname.length() <= 1) {
			sname = null;
		}

		// 해당 대분류 카테고리가 있을 경우 ex) 대분류 : 게임, 소분류 : null
		if (categoryService.isDCategory(dname) >= 1 && sname == null) {
			// 이미 존재하는 대분류 카테고리
			result = 2;

		}

		if (categoryService.isCategory(sname, dname) >= 1) {
			// 이미 존재하는 대, 소분류 카테고리
			result = 2;
		}

		if (result == 0) {

			RequestCategory request = new RequestCategory();

			request.setUserkey(user.getUserKey());
			request.setSname(sname);
			request.setDname(dname);

			// 이미 요청했는지 확인
			if (categoryService.alreadyRequestCategory(request) == 0)
				result = categoryService.UserRequestCategory(request);
			else
				result = 0;

		}

		return result;
	}

	// 그룹 생성 페이지 이동
	@GetMapping("/groupCreate")
	public ModelAndView groupCreate(ModelAndView mv) {

		List<GCategory> dcategory = categoryService.getDCategory();
		List<GCategory2> scategory = categoryService.getSCategory();

		mv.addObject("dcategory", dcategory);
		mv.addObject("scategory", scategory);

		mv.setViewName("group/group_create");
		return mv;

	}
	
	// 모임 내의 회원 리스트 페이지로 이동 (기본적으로 일반회원 리스트 페이지 보여준다.)
	@GetMapping("/groupMember")
	public String groupMember(@RequestParam(required = true, defaultValue = "0") int groupKey, 
									HttpSession session, Model m, HttpServletResponse response) throws IOException {
		System.out.println("회원 리스트 보기 위한 컨트롤러 왔습니다!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		int userKey = -1;
		if (session.getAttribute("id") == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인 후 이용해주세요.');");
			out.println("location.href = 'login'");
			out.println("</script>");
			out.close();
		} else {
			userKey = groupMemberService.getUser((String)session.getAttribute("id"));
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userkey", userKey);
		map.put("groupkey", groupKey);
		
		// 관리자 여부 확인
		int isAdmin = groupMasterService.isAdmin(map);
		
		// 관리자 아님
		if (isAdmin == 0) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('관리자만 접속할 수 있습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		List<GGroupMember> mem = groupMasterService.getGroupMembers(groupKey);	// 일반회원 리스트
		int membercount = groupMasterService.getMemberCount(groupKey);			// 일반회원 수
		
		int yetMembercount = groupMasterService.getYetMemberCount(groupKey);	// 아직 가입 승인 받지 못한 회원 수
		
		m.addAttribute("mem", mem);
		m.addAttribute("membercount", membercount);
		m.addAttribute("yetMembercount", yetMembercount);
		m.addAttribute("groupkey", groupKey);
		
		return "group/groupMember";
	}
	
	// 회원 강퇴
	@ResponseBody
	@PostMapping("expelMem")
	public Object expelMem (@RequestParam(required = true, defaultValue = "0") int userKey,
							@RequestParam(required = true, defaultValue = "0") int groupKey) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userkey", userKey);
		map.put("groupkey", groupKey);
		
		int result = groupMasterService.expelMem(map);
		if (result == 0) {
			result = -1;
		}
		
		List<GGroupMember> mem = groupMasterService.getGroupMembers(groupKey);
		int membercount = groupMasterService.getMemberCount(groupKey);
		
		map.put("list", mem);
		map.put("membercount", membercount);
		map.put("result", result);
		return map;
	}
	
	// '요청목록' 메뉴 클릭했을 때 ajax로 불러온다.
	@ResponseBody
	@PostMapping("getWaitMem")
	public Object getWaitMem (@RequestParam(required = true) int groupKey,
							  @RequestParam(required = true) int menu) {
		System.out.println("회원 요청 ajax");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("groupkey", groupKey);
		
		List<GGroupMember> mem = groupMasterService.getYetGroupMember(groupKey);	// 가입 대기 회원 리스트
		int yetMembercount = groupMasterService.getYetMemberCount(groupKey);		// 아직 가입 승인 받지 못한 회원 수
		
		map.put("menu", menu);
		map.put("list", mem);
		map.put("yetMembercount", yetMembercount);
		map.put("groupkey", groupKey);
		return map;
	}
	
	// '회원목록' 메뉴 클릭했을 때 ajax로 불러온다.
	@ResponseBody
	@PostMapping("getGroupMem")
	public Object getGroupMem (@RequestParam(required = true) int groupKey,
							   @RequestParam(required = true) int menu) {
		System.out.println("회원목록 ajax");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("groupkey", groupKey);
		
		List<GGroupMember> mem = groupMasterService.getGroupMembers(groupKey);	// 일반회원 리스트
		int membercount = groupMasterService.getMemberCount(groupKey);			// 일반회원 수
		
		map.put("menu", menu);
		map.put("list", mem);
		map.put("membercount", membercount);
		map.put("groupkey", groupKey);
		return map;
	}
	
	// 가입 요청 목록에서 '요청 삭제' 클릭할 경우 - ggroupmember에서 delete
	@ResponseBody
	@GetMapping("rejectJoin")
	public Object rejectJoin (@RequestParam(required = true) int userkey, @RequestParam(required = true) int groupkey) {
		
		Map<String, Object> keys = new HashMap<String, Object>();
		List<GGroupMember> mem = new ArrayList<GGroupMember>();
		
		keys.put("userkey", userkey);
		keys.put("groupkey", groupkey);
		
		int result = groupMasterService.rejectJoin(keys);
		
		if (result == 1)
			mem = groupMasterService.getYetGroupMember(groupkey);
		
		int yetMembercount = groupMasterService.getYetMemberCount(groupkey);		// 아직 가입 승인 받지 못한 회원 수
		
		keys.put("mem", mem);
		keys.put("yetMembercount", yetMembercount);
		return keys;
	}
	
	// 가입 요청 목록에서 '승인' 클릭할 경우 - ggroupmember에서 update
	@ResponseBody
	@GetMapping("cofirmJoin")
	public Object cofirmJoin (@RequestParam(required = true) int userkey, @RequestParam(required = true) int groupkey) {
		
		Map<String, Object> keys = new HashMap<String, Object>();
		List<GGroupMember> mem = new ArrayList<GGroupMember>();
		
		keys.put("userkey", userkey);
		keys.put("groupkey", groupkey);
		
		int result = groupMasterService.confirmJoin(keys);
		
		if (result == 1)
			mem = groupMasterService.getYetGroupMember(groupkey);
		
		keys.put("list", mem);
		return keys;
	}
}
