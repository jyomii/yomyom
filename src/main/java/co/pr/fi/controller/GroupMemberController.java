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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.pr.fi.domain.CalendarList;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.JoinAnswer;
import co.pr.fi.domain.JoinQuest;
import co.pr.fi.domain.MemberList;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.Shortschedule;
import co.pr.fi.domain.UserRegGroup;
import co.pr.fi.service.GroupMemberService;
import co.pr.fi.service.GroupService;

@Controller
public class GroupMemberController {

	@Autowired
	GroupMemberService groupMemberService;
	
	@Autowired
	private GroupService groupservice;
	
	/*** 모임 가입 페이지 이동 ***/ 
	@GetMapping("/signGroup")
	public ModelAndView signGroup (@RequestParam(required = true) int groupkey,
								   ModelAndView mv, HttpServletResponse response, HttpSession session) throws IOException {
		System.out.println("모임 가입 페이지 이동");
		System.out.println("groupkey =====================================" + groupkey);
		int userkey = -1; 
		
		// 로그인하지 않았을 때
		if (session.getAttribute("id") == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인 후 이용해주세요.');");
			out.println("location.href = 'login'");
			out.println("</script>");
			out.close();
			return null;
		} else {
			userkey = groupMemberService.getUser((String) session.getAttribute("id"));
		}
		
		List<JoinQuest> list = groupMemberService.getJoinSample(groupkey);	// 현재 모임의 가입 양식 가져오기
		
		if (!list.isEmpty()) {
			mv.addObject("quest1", list.get(0).getQuest1());
			mv.addObject("quest2", list.get(0).getQuest2());
			mv.addObject("quest3", list.get(0).getQuest3());
			mv.addObject("quest4", list.get(0).getQuest4());
			mv.addObject("quest5", list.get(0).getQuest5());
			mv.addObject("introduce", list.get(0).getIntroduce());
		}
		
		mv.addObject("groupkey", groupkey);
		mv.addObject("userkey", userkey);
		
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		
		GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
		mv.addObject("userinfo", groupmember);
		
		GGroup group = groupservice.groupInfo(groupkey); // 모임 정보
		mv.addObject("group", group);
		
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		
		int groupmasterkey = groupservice.groupmasterkey(groupkey);	// 모임장키
		mv.addObject("groupmasterkey", groupmasterkey);
		
		GLocation location = groupservice.groupwhere(group.getWhereKey());	// 지역
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		
		int age = groupservice.groupage(group.getAgeKey());	// 연령대
		mv.addObject("groupage", age);
		
		String dcategory = groupservice.groupdcategory(groupkey);	// 카테고리 대분류
		mv.addObject("groupdcategory", dcategory);
		
		String scategory = groupservice.groupscategory(groupkey);	// 카테고리 소분류
		mv.addObject("groupscategory", scategory);
		
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		
		List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		
		List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey, userkey);
		mv.addObject("groupmeetinglist", groupmeetinglist);
		
		List<CalendarList> groupcalendarlist = groupservice.groupcalendarlist(userkey, month, year);
		mv.addObject("groupcalendarlist", groupcalendarlist);
		mv.addObject("groupcalendarlistCount", groupcalendarlist.size());
		
		List<UserRegGroup> userreggroup = groupservice.userreggroup(userkey);
		mv.addObject("userreggroup", userreggroup);
		mv.addObject("userreggroupcount", userreggroup.size());
		
		for (int i = 0; i < groupcalendarlist.size(); i++) {
			if (Integer.parseInt(groupcalendarlist.get(i).getStartdate()) == date) {
				int d = Integer.parseInt(groupcalendarlist.get(i).getStartdate());
				List<Shortschedule> shortschedule = groupservice.shortschedule(userkey, d, year, month);
				mv.addObject("shortschedule", shortschedule);
			}
		}
		
		mv.setViewName("G_signup");
		return mv;
	}
	
	/*** 모임 가입하기 ***/
	@PostMapping("/joinGroupAction")
	public String joinGroupAction(GGroupMember mem, JoinAnswer answer, HttpServletResponse response, RedirectAttributes redirect) throws IOException {
		System.out.println("모임 가입하기 Action");
		System.out.println("가입하려는 모임의 모임키 = " + mem.getGroupKey() + ", 가입하려는 유저의 유저키 = " + mem.getUserKey());
		
		String filePath = "C:/groupin";	// 파일 저장 경로
		
		File dir = new File(filePath);	// 파일 저장 경로 확인
		if (!dir.exists()) {	// 존재하지 않을 시 폴더 생성
			dir.mkdirs();
		}

		// 이미 가입한 회원인지 아닌지 판단
		int isNewMem = groupMemberService.isNewMem(mem);
		if (isNewMem == 1) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('이미 가입한 모임입니다.');");
			out.println("location.href = 'groupmain'");	
			out.println("</script>");
			out.close();
			return null;
		} else {
			MultipartFile uploadfile = mem.getUploadfile();
			
			if (!uploadfile.isEmpty()) {
				String fileName = uploadfile.getOriginalFilename();	// 유저가 올린 파일의 찐 이름 가져온다.
				mem.setProfileOrigin(fileName);
				
				// 새로운 폴더 이름 : 오늘 년-월-일
				Calendar c = Calendar.getInstance();
				int year = c.get(Calendar.YEAR); // 오늘 년도 구한다.
				int month = c.get(Calendar.MONTH) + 1; // 오늘 월 구한다.
				int date = c.get(Calendar.DATE); // 오늘 일 구한다.
				
				// 이클립스 관리 경로
				String saveFolder = filePath + "/";								// C:/groupin/
				String homedir = saveFolder + year + "-" + month + "-" + date;	// C:/groupin/2020-01-27
				System.out.println("homedir = " + homedir);
				
				File path1 = new File(homedir);
				if (!(path1.exists())) {
					path1.mkdir();		// 새로운 폴더 생성
				}
				
				// 난수를 구한다.
				Random r = new Random();
				int random = r.nextInt(100000000);
				
				/**** 확장자 구하기 시작 ****/
				int index = fileName.lastIndexOf(".");
				
				System.out.println("index = " + index);
				String fileExtension = fileName.substring(index + 1);
				System.out.println("fileExtension = " + fileExtension);
				
				// 새로운 파일명
				String refileName = "group" + year + month + date + random + "." + fileExtension;
				System.out.println("refileName = " + refileName);
				
				// 오라클 디비에 저장될 파일명
				String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
				System.out.println("fileDBName = " + fileDBName);
				
				// transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장한다.
				uploadfile.transferTo(new File(saveFolder + fileDBName));
				
				// 바뀐 파일명으로 저장
				mem.setProfileFile(fileDBName);
			}
			// 가입한 회원의 기본 정보
			groupMemberService.joinGroup(mem);
			
			// 가입한 회원의 가입양식 작성 리스트 
			groupMemberService.setJoinSample(answer);
		}
		
		redirect.addAttribute("groupkey", mem.getGroupKey());
		return "redirect:group_main.net";
	}
	
	/*** 모임 추천 페이지 이동 ***/
	@GetMapping("/recommendG")
	public ModelAndView recommendGroup (HttpSession session, ModelAndView mv, HttpServletResponse response) throws IOException {
		List<GGroup> groupList = new ArrayList<GGroup>();
		// 로그인 없이 추천모임 갈 때 
		if (session.getAttribute("id") == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인 후 이용해주세요.');");
			out.println("location.href = 'login'");
			out.println("</script>");
			out.close();
		}
		groupList = groupMemberService.preferGroup(session.getAttribute("id"));
		
		mv.addObject("list", groupList);
		mv.setViewName("G_recommendGroup");
		return mv;
	}
	
	/*** 모임 회원 상세 페이지 이동 ***/
	@PostMapping("/G_mem_detail.net")
	public ModelAndView GmemDetail (@RequestParam(required = false, defaultValue = "0") int status,
									@RequestParam(required = true, defaultValue = "-1") int userkey, 
									@RequestParam(required = true, defaultValue = "-1") int groupkey,
									@RequestParam(required = false, defaultValue = "1") int page,
									@RequestParam(required = false, defaultValue = "10") int limit,
									ModelAndView mv, HttpSession session) {
		
		System.out.println("### 모임 회원 상세정보 POST ###");
		System.out.println("##### " + "userkey = " + userkey + " | groupkey = " + groupkey + " | status = " + status + " #####");
		
		Map<String, Object> temp = new HashMap<String, Object>();
		List<GGroup> groupList = new ArrayList<GGroup>();
		List<Post> postList = new ArrayList<Post>();
		
		int loginuser = -1;	// 현재 로그인한 유저의 유저키를 담을 변수 
		
		if (session.getAttribute("id") != null) {
			loginuser = groupMemberService.getUser((String) session.getAttribute("id"));
			mv.addObject("loginuser", loginuser);
		}
		
		int masterkey = groupMemberService.getMaster(groupkey);	// 현재 모임에서의 모임장 유저키를 가져온다.
		mv.addObject("masterkey", masterkey);
		
		int listcount = 0;
		
		/*** 모임 상관없이 내가 작성한 글이나 내가 작성한 댓글 보기 ***/
		System.out.println("내가 작성한 글 / 내가 작성한 댓글 보기");
		switch (status) {
		case 0 :
			/*** 가입한 모임 - 모임은 누구나 다 볼 수 있기 때문에 조건이 없다. ***/
			listcount = groupMemberService.getJoinedCount(userkey);				// 총 가입한 모임 수 		
			groupList = groupMemberService.userInGroup(userkey, page, limit); 	// 가입한 모임 리스트
			temp = pagination(page, limit, listcount);							// 페이지네이션
			break;
		case 1:
			if (loginuser == userkey) {
				/*** 본인의 작성글 조회 - 모임에 상관없이 가져온다. ***/
				listcount = groupMemberService.getMyPostCount(loginuser);		// 내가 작성한 글의 개수
				postList = groupMemberService.getMyPost(loginuser, page, limit);// 내가 작성한 글 리스트
				temp = pagination(page, limit, listcount);						// 페이지네이션
			} else {
				/*** 타인의 작성글 조회 - 현재 모임에서 작성한 글만 가져온다. ***/ 
				temp.put("userkey", userkey);
				temp.put("groupkey", groupkey);
					
				listcount = groupMemberService.getWroteCount(temp);							// 유저의 작성글 수
				postList = groupMemberService.wroteInGroup(userkey, groupkey, page, limit);	// 유저의 작성한 글 리스트
				temp = pagination(page, limit, listcount);									// 페이지네이션
			}
			break;
		case 2:
			if (loginuser == userkey) {
				/*** 본인의 작성 댓글 조회 - 모임에 상관없이 가져온다. ***/
				listcount = groupMemberService.getMyCommentCount(loginuser);		// 내가 작성한 댓글의 개수
				postList = groupMemberService.getMyComment(loginuser, page, limit);	// 내가 작성한 댓글 리스트
				temp = pagination(page, limit, listcount);							// 페이지네이션
			} else {
				temp.put("userkey", userkey);		// 현재 조회하려는 회원의 유저키
				temp.put("groupkey", groupkey);		// 현재 모임키
				temp.put("loginuser", loginuser);	// 현재 로그인한 유저의 유저키
					
				listcount = groupMemberService.getCommentedCount(temp);										// 유저가 작성한 댓글의 개수
				postList = groupMemberService.postByCommented(userkey, groupkey, loginuser, page, limit);	// 유저가 작성한 댓글 리스트
				temp = pagination(page, limit, listcount);													// 페이지네이션
			}
			break;
		}
		mv.addObject("page", page);
		mv.addObject("maxpage", temp.get("maxpage"));
		mv.addObject("startpage", temp.get("startpage"));
		mv.addObject("endpage", temp.get("endpage"));
		mv.addObject("listcount", listcount);
		if (!postList.isEmpty()) mv.addObject("list", postList);
		if (!groupList.isEmpty()) mv.addObject("list", groupList);
		mv.addObject("limit", limit);
		mv.addObject("status", status);
		
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
		String dcategory = groupservice.groupdcategory(groupkey);
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(groupkey);
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
		
		mv.addObject("userkey", userkey);
		mv.addObject("groupkey", groupkey);
		mv.setViewName("G_mem_detail");
		return mv;
	}
	
	/*** 모임 회원 상세 정보 -- ajax ***/
	@ResponseBody
	@PostMapping("/G_mem_detail_Ajax")
	public Object memDetail (@RequestParam(required = false, defaultValue = "0") int status,
							 @RequestParam(required = false, defaultValue = "-1") int userkey, 
							 @RequestParam(required = false, defaultValue = "-1") int groupkey,
							 @RequestParam(required = false, defaultValue = "1") int page,
							 @RequestParam(required = false, defaultValue = "10") int limit,
							 HttpSession session) {
		System.out.println("### 모임 회원 상세정보 Ajax ###");
		System.out.println("userkey = " + userkey + " | groupkey = " + groupkey + " | status = " + status);
		
		Map<String, Object> result = new HashMap<String, Object>();
		Map<String, Object> temp = new HashMap<String, Object>();
		List<GGroup> groupList = new ArrayList<GGroup>();
		List<Post> postList = new ArrayList<Post>();
		
		int listcount = 0;
		int loginuser = 0;
		if (session.getAttribute("id") != null)
			loginuser = groupMemberService.getUser((String) session.getAttribute("id"));
		
		switch (status) {
		case 0 :
			/*** 가입한 모임 ***/
			listcount = groupMemberService.getJoinedCount(userkey);	// 가입한 모임의 수
			groupList = groupMemberService.userInGroup(userkey, page, limit);
			temp = pagination(page, limit, listcount);
			break;
		case 1 :
			/*** 작성한 글 ***/
			temp.put("userkey", userkey);
			temp.put("groupkey", groupkey);
			
			listcount = groupMemberService.getWroteCount(temp);
			postList = groupMemberService.wroteInGroup(userkey, groupkey, page, limit);
			temp = pagination(page, limit, listcount);
			System.out.println("pagination = " + temp.entrySet());
			break;
		case 2 : 
			/*** 작성한 댓글 ***/
			temp.put("userkey", userkey);
			temp.put("groupkey", groupkey);
			
			listcount = groupMemberService.getCommentedCount(temp);										// 작성한 댓글수
			postList = groupMemberService.postByCommented(userkey, groupkey, loginuser, page, limit);	// 작성한 댓글 리스트
			temp = pagination(page, limit, listcount);													// 페이지네이션
			break;
		case 3 :
			/*** 작성한 가입양식 ***/
			temp.put("userkey", userkey);
			temp.put("groupkey", groupkey);
			JoinAnswer answer = groupMemberService.getAnswerSample(temp);
			result.put("answer1", answer.getAnswer1());
			result.put("answer2", answer.getAnswer2());
			result.put("answer3", answer.getAnswer3());
			result.put("answer4", answer.getAnswer4());
			result.put("answer5", answer.getAnswer5());
			result.put("introduce", answer.getIntroduce());
			break;
		}
		
		result.put("status", status);
		if (status != 3) {
			result.put("list", postList);
			result.put("list", groupList);
			result.put("page", page);
			result.put("maxpage", temp.get("maxpage"));
			result.put("startpage", temp.get("startpage"));
			result.put("endpage", temp.get("endpage"));
			result.put("listcount", listcount);
			result.put("limit", limit);
		}
		return result;
	}
	
	/*** 닉네임 중복체크 -- ajax ***/
	@ResponseBody
	@PostMapping("/groupNickCheck")
	public String nickCheck (String nickname, String groupkey) {
		System.out.println("### 닉네임 체크 ### " + nickname);
		System.out.println("체크크크크ㅡ크크" + groupkey);
		Map<String, Object> check = new HashMap<String, Object>();
		check.put("nickname", nickname);
		check.put("groupkey", groupkey);
		int result = groupMemberService.nickCheck(check);
		return Integer.toString(result);
	}
	
	// 모임 회원 상세보기 처리 메서드 (보류)
	public Map<String, Object> detail() {
		Map<String, Object> result = new HashMap<String, Object>();
		
		return result;
	}
	
	// 페이지네이션 처리 메서드
	public Map<String, Object> pagination (int page, int limit, int listcount) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int maxpage = (listcount + limit - 1) / limit;	// 총 페이지 수
		int startpage = ((page - 1) / 10) * 10 + 1;		// 현재 페이지에 보여줄 시작 페이지 수
		int endpage = startpage + 10 - 1;				// 현재 페이지에 보여줄 마지막 페이지 수
		
		if (endpage > maxpage) endpage = maxpage;
		
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		return map;
	}
	
}
