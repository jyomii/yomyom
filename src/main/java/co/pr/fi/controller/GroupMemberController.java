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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.JoinAnswer;
import co.pr.fi.domain.JoinQuest;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupMemberService;

@Controller
public class GroupMemberController {

	@Autowired
	GroupMemberService groupMemberService;
	
	// 모임 메인 페이지 이동
	@GetMapping("/groupmain")
	public String groupmain (@RequestParam(required = false, defaultValue = "0") int groupkey, 
							 Model m, HttpSession session, HttpServletResponse response) throws IOException {
		int userkey = -1;
		
		if (session.getAttribute("id") == null) {
			/*
			 * response.setContentType("text/html; charset=utf-8"); PrintWriter out =
			 * response.getWriter(); out.println("<script>");
			 * out.println("alert('로그인이 필요합니다.');"); out.println("location.href = 'login'");
			 * out.println("</script>"); out.close();
			 */
			System.out.println("로그인 안 해씀");
		} else {
			userkey = groupMemberService.getUser((String) session.getAttribute("id"));
		}
		
		m.addAttribute("groupkey", groupkey);	
		m.addAttribute("userkey", userkey);
		return "groupin_group_main";
	}
	
	// 모임 가입 페이지 이동  
	@GetMapping("/signGroup")
	// ## GroupKey 파라미터로 가져오는 거 추가 해야됨
	public ModelAndView signGroup (@RequestParam(required = true) int groupkey,
								   ModelAndView mv, HttpServletResponse response, HttpSession session) throws IOException {
		System.out.println("## 모임 가입 페이지로 이동 ##");
		
		groupkey = 0;	// 모임키 임시 
		int userkey = 0; 
		
		// 로그인하지 않았을 때
		if (session.getAttribute("id") == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인을 해주세요.');");
			out.println("location.href = 'login'");
			out.println("</script>");
			out.close();
		} else {
			userkey = groupMemberService.getUser((String) session.getAttribute("id"));
		}
		
		List<JoinQuest> list = groupMemberService.getJoinSample(groupkey);	// 현재 모임의 가입 양식 가져오기
		System.out.println("모임 가입 양식 가져오기");
		if (list != null) {
			mv.addObject("quest1", list.get(0).getQuest1());
			mv.addObject("quest2", list.get(0).getQuest2());
			mv.addObject("quest3", list.get(0).getQuest3());
			mv.addObject("quest4", list.get(0).getQuest4());
			mv.addObject("quest5", list.get(0).getQuest5());
			mv.addObject("introduce", list.get(0).getIntroduce());
			mv.addObject("groupkey", groupkey);
			mv.addObject("userkey", userkey);
			mv.setViewName("G_signup");
		}
		return mv;
	}
	/////////////////////////////////////////////////////////////////////////////
	// 모임 가입하기
	@PostMapping("/joinGroupAction")
	public String joinGroupAction(GGroupMember mem, JoinAnswer answer, HttpServletResponse response) throws IOException {
		System.out.println("////////////////////////////////////////////");
		System.out.println(mem.getGroupKey());
		System.out.println(mem.getUserKey());
		System.out.println("////////////////////////////////////////////");
		
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
		
		return "redirect:groupmain";
	}
	
	// 모임 추천 페이지 이동
	@GetMapping("/recommendG")
	public ModelAndView recommendGroup (HttpSession session, ModelAndView mv, HttpServletResponse response) throws IOException {
		List<GGroup> groupList = new ArrayList<GGroup>();
		// 로그인 없이 추천모임 갈 때 
		if (session.getAttribute("id") == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location.href = 'login'");
			out.println("</script>");
			out.close();
		}
		groupList = groupMemberService.preferGroup(session.getAttribute("id"));
		
		mv.addObject("list", groupList);
		mv.setViewName("G_recommendGroup");
		return mv;
	}
	
	// 모임 회원 상세 페이지 이동
	@PostMapping("/G_mem_detail.net")
	public ModelAndView GmemDetail (@RequestParam(required = false, defaultValue = "0") int status,
									@RequestParam(required = false, defaultValue = "-1") int userkey, 
									@RequestParam(required = false, defaultValue = "-1") int groupkey,
									@RequestParam(required = false, defaultValue = "1") int page,
									@RequestParam(required = false, defaultValue = "10") int limit,
									HttpServletResponse response, ModelAndView mv, HttpSession session) throws IOException {
		
		System.out.println("### 모임 회원 상세정보 POST ###");
		System.out.println("##### " + "userkey = " + userkey + " | groupkey = " + groupkey + " | status = " + status + " #####");
		
		Map<String, Object> temp = new HashMap<String, Object>();
		List<GGroup> groupList = new ArrayList<GGroup>();
		List<Post> postList = new ArrayList<Post>();
		
		int loginuser = 0;
		
		if (session.getAttribute("id") != null) {
			loginuser = groupMemberService.getUser((String) session.getAttribute("id"));
		}
		
		int listcount = 0;
		status = 1;	// 임시
		
		switch (status) {
		case 0 :
			// 가입한 모임
			listcount = groupMemberService.getJoinedCount(userkey);	// 총 리스트 수 		
			temp = pagination(page, limit, listcount);
			System.out.println("pagination = " + temp.entrySet());
			
			// # 가입한 모임 리스트
			groupList = groupMemberService.userInGroup(userkey, page, limit);
			
			mv.addObject("page", page);
			mv.addObject("maxpage", temp.get("maxpage"));
			mv.addObject("startpage", temp.get("startpage"));
			mv.addObject("endpage", temp.get("endpage"));
			mv.addObject("listcount", listcount);
			mv.addObject("list", groupList);
			mv.addObject("limit", limit);
			mv.addObject("status", status);
			break;
		case 1 :
			// 작성한 글
			temp.put("userkey", userkey);
			temp.put("groupkey", groupkey);
			
			listcount = groupMemberService.getWroteCount(temp);	// 유저가 작성한 글의 개수 
			postList = groupMemberService.wroteInGroup(userkey, groupkey, page, limit);
			
			temp = pagination(page, limit, listcount);
			System.out.println("pagination = " + temp.entrySet());
			
			mv.addObject("page", page);
			mv.addObject("maxpage", temp.get("maxpage"));
			mv.addObject("startpage", temp.get("startpage"));
			mv.addObject("endpage", temp.get("endpage"));
			mv.addObject("listcount", listcount);
			mv.addObject("list", postList);
			mv.addObject("limit", limit);
			mv.addObject("status", status);
			break;
		case 2 : 
			/* 작성한 댓글 */
			
			// case 0 : 로그인한 유저가 현재 조회하는 회원이 아닐 경우 비댓은 안 보여야 한다.
			temp.put("userkey", userkey);		// 현재 조회하려는 회원의 유저키
			temp.put("groupkey", groupkey);
			temp.put("loginuser", loginuser);	// 현재 로그인한 유저의 유저키
			
			listcount = groupMemberService.getCommentedCount(temp);
			postList = groupMemberService.postByCommented(userkey, groupkey, loginuser, page, limit);
			
			temp = pagination(page, limit, listcount);
			System.out.println("pagination = " + temp.entrySet());
			
			mv.addObject("page", page);
			mv.addObject("maxpage", temp.get("maxpage"));
			mv.addObject("startpage", temp.get("startpage"));
			mv.addObject("endpage", temp.get("endpage"));
			mv.addObject("listcount", listcount);
			mv.addObject("list", postList);
			mv.addObject("limit", limit);
			mv.addObject("status", status);
			break;
		}
		
		mv.addObject("userkey", userkey);
		mv.addObject("groupkey", groupkey);
		mv.setViewName("G_mem_detail");
		return mv;
	}
	
	// 모임 회원 상세 정보 -- ajax
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
			// 가입한 모임
			listcount = groupMemberService.getJoinedCount(userkey);	// 가입한 모임의 수
			temp = pagination(page, limit, listcount);
			System.out.println("pagination = " + temp.entrySet());
			
			// 페이지네이션
			groupList = groupMemberService.userInGroup(userkey, page, limit);
			
			result.put("list", groupList);
			result.put("status", status);
			result.put("page", page);
			result.put("maxpage", temp.get("maxpage"));
			result.put("startpage", temp.get("startpage"));
			result.put("endpage", temp.get("endpage"));
			result.put("listcount", listcount);
			result.put("limit", limit);
			break;
		case 1 :
			// 작성한 글
			temp.put("userkey", userkey);
			temp.put("groupkey", groupkey);
			
			listcount = groupMemberService.getWroteCount(temp);
			postList = groupMemberService.wroteInGroup(userkey, groupkey, page, limit);
			temp = pagination(page, limit, listcount);
			System.out.println("pagination = " + temp.entrySet());
			
			result.put("list", postList);
			result.put("status", status);
			result.put("page", page);
			result.put("maxpage", temp.get("maxpage"));
			result.put("startpage", temp.get("startpage"));
			result.put("endpage", temp.get("endpage"));
			result.put("listcount", listcount);
			result.put("limit", limit);
			break;
		case 2 : 
			// 작성한 댓글
			temp.put("userkey", userkey);
			temp.put("groupkey", groupkey);
			
			listcount = groupMemberService.getCommentedCount(temp);
			temp = pagination(page, limit, listcount);
			System.out.println("pagination = " + temp.entrySet());
			
			postList = groupMemberService.postByCommented(userkey, groupkey, loginuser, page, limit);
			
			result.put("list", postList);
			result.put("status", status);
			result.put("page", page);
			result.put("maxpage", temp.get("maxpage"));
			result.put("startpage", temp.get("startpage"));
			result.put("endpage", temp.get("endpage"));
			result.put("listcount", listcount);
			result.put("limit", limit);
			break;
		}
		return result;
	}
	
	// 닉네임 중복체크 -- ajax
	@ResponseBody
	@PostMapping("/groupNickCheck")
	public String nickCheck (String nickname, String groupkey) {
		System.out.println("### 닉네임 체크 ### " + nickname);
		
		Map<String, Object> check = new HashMap<String, Object>();
		check.put("nickname", nickname);
		check.put("groupkey", groupkey);
		int result = groupMemberService.nickCheck(check);
		return Integer.toString(result);
	}
	
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
