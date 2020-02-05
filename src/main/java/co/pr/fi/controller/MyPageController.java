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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GComment;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.PrBoard;
import co.pr.fi.domain.UserLikeGroup;
import co.pr.fi.domain.UserMessage;
import co.pr.fi.service.CategoryService;
import co.pr.fi.service.MemberService;
import co.pr.fi.service.MessageService;
import co.pr.fi.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	MyPageService myPageService;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Autowired
	CategoryService categoryService;

	@Autowired
	MemberService memberService;

	@Autowired
	MessageService messageService;

	@RequestMapping(value = "/mypage")
	public ModelAndView mypageinfo(HttpSession session, HttpServletRequest request, ModelAndView mv) throws Exception {
		String id = (String) session.getAttribute("id");
		GUsers user = myPageService.userinfo(id);

		System.out.println("@#@#%@%@%#@" + user.getUserKey());

		List<Post> postList = new ArrayList<Post>();

		postList = myPageService.getList(id);

		// 가입한 모임
		List<GGroup> groupList = new ArrayList<GGroup>();
		groupList = myPageService.userJoinGroup(id);

		// 만든 모임
		List<GGroup> mygroupList = new ArrayList<GGroup>();
		mygroupList = myPageService.userMakeGroup(id);

		// 가입 모임 수
		int joincount = myPageService.joincount(id);

		// 만든 모임 수
		int makecount = myPageService.makecount(id);

		// 선택한 관심사
		List<GCategory2> userInterest = new ArrayList<GCategory2>();
		userInterest = myPageService.userInterest(id);
		System.out.println("#################" + userInterest.get(0).getSCategoryName());

		int postcount = myPageService.postcount(id);

		GUsers users = memberService.getUsers((String) session.getAttribute("id"));
		List<UserMessage> getMessage = messageService.getMyMessage(users.getUserKey());

		int msgcount = myPageService.msgCount(users.getUserKey());

		List<UserLikeGroup> favlist = myPageService.favlist(users.getUserKey());
		int favcount = myPageService.favcount(users.getUserKey());

		mv.setViewName("mypage/mypage");
		mv.addObject("mypage", user);
		mv.addObject("list", groupList);
		mv.addObject("mylist", mygroupList);
		mv.addObject("joincount", joincount);
		mv.addObject("makecount", makecount);
		mv.addObject("userInterest", userInterest);
		mv.addObject("postlist", postList);
		mv.addObject("postcount", postcount);
		mv.addObject("msgcount", msgcount);
		mv.addObject("getMessage", getMessage);
		mv.addObject("favlist", favlist);
		mv.addObject("favcount", favcount);
		
		System.out.println("################# 잘 넘어감");

		return mv;
	}

	// 사진등록
	@PostMapping("/userImage")
	public String userImage(GUsers user, HttpSession session, MultipartFile file, int userKey, HttpServletResponse resp)
			throws IllegalStateException, IOException {
		user.setUserKey(userKey);
		System.out.println("EWTSFSFSDFSFSDGE" + file.getOriginalFilename() + userKey);

		String filePath = "C:/groupin"; // 파일 저장 경로, 설정파일로 따로 관리한다.

		File dir = new File(filePath); // 파일 저장 경로 확인, 없으면 만든다.
		if (!dir.exists()) {
			dir.mkdirs();
		}

		// file = user.getUserImgInsert();

		if (!file.isEmpty()) {

			String fileName = file.getOriginalFilename(); // 원래 파일 명

			user.setUserImageOrigin(fileName); // 사진 저장

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
			String refileName = "user" + year + month + date + random + "." + fileExtension;

			System.out.println("refileName = " + refileName);

			// 오라클 디비에 저장될 파일명
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			System.out.println("fileDbName = " + fileDBName);

			// transferTo(File path) : 업로드한 파일의 매개변수의 경로에 저장합니다.
			file.transferTo(new File(saveFolder + fileDBName));

			// 바뀐 파일명으로 저장
			user.setUserImageFile(fileDBName); // 대표사진 저장

			
		}
		System.out.println(user);

		myPageService.userImgUpdate(user);
		session.setAttribute("image", user.getUserImageFile());
		return "redirect:mypage";

	}

	// 수정폼
	@RequestMapping(value = "/mypage2")
	public ModelAndView update(HttpSession session, ModelAndView mv) throws Exception {
		String id = (String) session.getAttribute("id");
		GUsers user = myPageService.userinfo(id);
		List<Post> postList = new ArrayList<Post>();

		postList = myPageService.getList(id);
		int postcount = myPageService.postcount(id);

		GUsers users = memberService.getUsers((String) session.getAttribute("id"));
		List<UserMessage> getMessage = messageService.getMyMessage(users.getUserKey());

		int msgcount = myPageService.msgCount(users.getUserKey());

		mv.setViewName("mypage/mypage2");
		mv.addObject("mypage", user);
		mv.addObject("postlist", postList);
		mv.addObject("postcount", postcount);
		mv.addObject("msgcount", msgcount);
		return mv;
	}

	// 수정처리
	@RequestMapping(value = "/updateprocess", method = RequestMethod.POST)
	public ModelAndView updateProcess(GUsers user, HttpSession session, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = (String) session.getAttribute("id");
		user.setUserId(id);

		// 모임 초대 여부
		if (user.getUserOptionGroup() == null)
			user.setUserOptionGroup("N");
		else
			user.setUserOptionGroup("Y");

		// 비밀번호 암호화처리
		// 일반 가입자일 경우 패스워드encoding
		String encPassword = passwordEncoder.encode(user.getUserPassword());
		user.setUserPassword(encPassword);

		int result = myPageService.myupdate(user);
		out.println("<script>");
		// 수정 된 경우
		if (result == 1) {
			out.println("alert('수정 완료');");
			out.println("location.href='mypage';");
		} else {
			out.println("alert('수정 실패');");
			out.println("history.back()");
		}
		out.println("</script>");
		out.close();
		return null;
	}

	// 수정2
	@RequestMapping(value = "/mypage3")
	public ModelAndView update2(HttpSession session, ModelAndView mv) throws Exception {
		String id = (String) session.getAttribute("id");
		List<GUserCategory> category = myPageService.category(id);

		// 선택한 관심사
		List<GCategory2> userInterest = new ArrayList<GCategory2>();
		userInterest = myPageService.userInterest(id);

		List<Post> postList = new ArrayList<Post>();
		postList = myPageService.getList(id);

		List<GCategory> dcategory = categoryService.getDCategory();
		List<GCategory2> scategory = categoryService.getSCategory();

		int postcount = myPageService.postcount(id);

		GUsers users = memberService.getUsers((String) session.getAttribute("id"));
		List<UserMessage> getMessage = messageService.getMyMessage(users.getUserKey());

		int msgcount = myPageService.msgCount(users.getUserKey());

		mv.setViewName("mypage/mypage3");
		mv.addObject("mypage", users);
		mv.addObject("category", category);
		mv.addObject("userInterest", userInterest);
		mv.addObject("dcategory", dcategory);
		mv.addObject("scategory", scategory);
		mv.addObject("postlist", postList);
		mv.addObject("postcount", postcount);
		mv.addObject("msgcount", msgcount);
		return mv;
	}

	// 수정처리2
	@RequestMapping(value = "/updateprocess2", method = RequestMethod.POST)
	public ModelAndView updateProcess2(HttpSession session,
			@RequestParam(value = "categorykey[]") List<Integer> categorykey, HttpServletResponse response)
			throws Exception {
		response.setContentType("text/html;charset=utf-8");
		String id = (String) session.getAttribute("id");
		List<GUserCategory> category = myPageService.category(id);

		Map<String, Object> usercategory = new HashMap<String, Object>();
		usercategory.put("id", id);
		usercategory.put("list", categorykey);
		 categoryService.interestupdate(usercategory);

		 System.out.println("##############"+categorykey);
		
		return null;
	}

	//
	@RequestMapping(value = "/mypage4")
	public ModelAndView recentwww(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "10") int limit,
			@RequestParam(required = false, defaultValue = "0") int userKey,
			@RequestParam(required = false, defaultValue = "0") int groupKey, Post post, GComment comment,
			HttpSession session, ModelAndView mv) throws Exception {
		String id = (String) session.getAttribute("id");
		GUsers user = myPageService.userinfo(id);

		List<GGroup> groupList = new ArrayList<GGroup>();
		List<Post> postList = new ArrayList<Post>();

		postList = myPageService.getList(id);

		List<GComment> commList = new ArrayList<GComment>();
		commList = myPageService.getListList(id);

		System.out.println("#$@#@%^#^" + postList.toString());
		// 총 리스트 수를 받아옵니다.
		int listcount = myPageService.getListCount(id); // 총 리스트 수

		int maxpage = (listcount + limit - 1) / limit;
		System.out.println("총 페이지수 : " + maxpage);

		int startpage = ((page - 1) / 10) * 10 + 1;
		System.out.println("현재 페이지에 보여줄 시작 페이지 수 = " + startpage);

		int endpage = startpage + 10 - 1;
		System.out.println("현재 페이지에 보여줄 마지막 페이지 수 =" + endpage);

		if (endpage > maxpage)
			endpage = maxpage;

		List<Post> list = myPageService.getPostList(page, limit);
		System.out.println("page =" + page);
		System.out.println("limit =" + limit);

		GUsers users = memberService.getUsers((String) session.getAttribute("id"));

		int postcount = myPageService.postcount(id);

		int commcount = myPageService.commcount(id);

		GUsers users1 = memberService.getUsers((String) session.getAttribute("id"));
		List<UserMessage> getMessage = messageService.getMyMessage(users1.getUserKey());

		int msgcount = myPageService.msgCount(users1.getUserKey());

		mv.setViewName("mypage/mypage4");
		mv.addObject("mypage", users);
		mv.addObject("list", list);
		mv.addObject("grouplist", groupList);
		mv.addObject("postlist", postList);
		mv.addObject("commlist", commList);
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("limit", limit);
		mv.addObject("postcount", postcount);
		mv.addObject("commcount", commcount);
		mv.addObject("msgcount", msgcount);

		return mv;
	}

	//
	@RequestMapping(value = "/mypage5")
	public ModelAndView recentnotice(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "10") int limit,
			@RequestParam(required = false, defaultValue = "0") int userKey,
			@RequestParam(required = false, defaultValue = "0") int groupKey, Post post, GComment comment,
			HttpSession session, ModelAndView mv) throws Exception {
		String id = (String) session.getAttribute("id");
		GUsers user = myPageService.userinfo(id);

		List<GGroup> groupList = new ArrayList<GGroup>();
		List<Post> postList = new ArrayList<Post>();

		postList = myPageService.getList(id);

		List<GComment> commList = new ArrayList<GComment>();
		commList = myPageService.getListList(id);

		System.out.println("#$@#@%^#^" + postList.toString());
		// 총 리스트 수를 받아옵니다.
		int listcount = myPageService.getListCount(id); // 총 리스트 수

		int maxpage = (listcount + limit - 1) / limit;
		System.out.println("총 페이지수 : " + maxpage);

		int startpage = ((page - 1) / 10) * 10 + 1;
		System.out.println("현재 페이지에 보여줄 시작 페이지 수 = " + startpage);

		int endpage = startpage + 10 - 1;
		System.out.println("현재 페이지에 보여줄 마지막 페이지 수 =" + endpage);

		if (endpage > maxpage)
			endpage = maxpage;

		List<Post> list = myPageService.getPostList(page, limit);
		System.out.println("page =" + page);
		System.out.println("limit =" + limit);

		GUsers users = memberService.getUsers((String) session.getAttribute("id"));

		int postcount = myPageService.postcount(id);

		int commcount = myPageService.commcount(id);

		GUsers users1 = memberService.getUsers((String) session.getAttribute("id"));
		List<UserMessage> getMessage = messageService.getMyMessage(users1.getUserKey());

		int msgcount = myPageService.msgCount(users1.getUserKey());

		mv.setViewName("mypage/mypage5");
		mv.addObject("mypage", users);
		mv.addObject("list", list);
		mv.addObject("grouplist", groupList);
		mv.addObject("postlist", postList);
		mv.addObject("commlist", commList);
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("limit", limit);
		mv.addObject("postcount", postcount);
		mv.addObject("commcount", commcount);
		mv.addObject("msgcount", msgcount);

		return mv;
	}

	// 즐찾 추가
	@RequestMapping(value = "/favgroup", method = RequestMethod.POST)
	public String favgroupProcess(GUsers user,  int groupKey, HttpSession session, HttpServletResponse response)
			throws Exception {
		response.setContentType("text/html;charset=utf-8");
		String id = (String) session.getAttribute("id");
		user.setUserId(id);

		GUsers users = memberService.getUsers((String) session.getAttribute("id"));
		
		System.out.println("userkey = "+ users.getUserKey());
		System.out.println("groupKey = "+ groupKey);
		myPageService.favgroup(users.getUserKey(), groupKey);

		// myPageService.favgroup(users.getUserKey());

		 return null;
	}
	
	// 즐찾 해제
		@RequestMapping(value = "/favgroupD", method = RequestMethod.POST)
		public String favgroupDProcess(GUsers user, HttpSession session, HttpServletResponse response)
				throws Exception {
			response.setContentType("text/html;charset=utf-8");
			String id = (String) session.getAttribute("id");
			user.setUserId(id);

			GUsers users = memberService.getUsers((String) session.getAttribute("id"));
		
			myPageService.favgroupD(users.getUserKey());

			return null;
		}

	//
	@RequestMapping(value = "/mypage6")
	public ModelAndView usergroups(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "10") int limit,
			@RequestParam(required = false, defaultValue = "0") int userKey,
			@RequestParam(required = false, defaultValue = "0") int groupKey, Post post, GComment comment,
			HttpSession session, ModelAndView mv) throws Exception {
		String id = (String) session.getAttribute("id");
		GUsers user = myPageService.userinfo(id);

		List<GGroup> groupList = new ArrayList<GGroup>();
		List<Post> postList = new ArrayList<Post>();

		postList = myPageService.getList(id);

		List<GComment> commList = new ArrayList<GComment>();
		commList = myPageService.getListList(id);

		System.out.println("#$@#@%^#^" + postList.toString());
		// 총 리스트 수를 받아옵니다.
		int listcount = myPageService.getListCount(id); // 총 리스트 수

		int maxpage = (listcount + limit - 1) / limit;
		System.out.println("총 페이지수 : " + maxpage);

		int startpage = ((page - 1) / 10) * 10 + 1;
		System.out.println("현재 페이지에 보여줄 시작 페이지 수 = " + startpage);

		int endpage = startpage + 10 - 1;
		System.out.println("현재 페이지에 보여줄 마지막 페이지 수 =" + endpage);

		if (endpage > maxpage)
			endpage = maxpage;

		List<Post> list = myPageService.getPostList(page, limit);
		System.out.println("page =" + page);
		System.out.println("limit =" + limit);

		GUsers users = memberService.getUsers((String) session.getAttribute("id"));

		int postcount = myPageService.postcount(id);

		int commcount = myPageService.commcount(id);

		GUsers users1 = memberService.getUsers((String) session.getAttribute("id"));
		List<UserMessage> getMessage = messageService.getMyMessage(users1.getUserKey());

		int msgcount = myPageService.msgCount(users1.getUserKey());

		List<UserLikeGroup> favlist = myPageService.favlist(users.getUserKey());
		int favcount = myPageService.favcount(users.getUserKey());

		//가입 모임
		groupList = myPageService.userJoinGroup(id);

		// 만든 모임
		List<GGroup> mygroupList = new ArrayList<GGroup>();
		mygroupList = myPageService.userMakeGroup(id);

		// 가입 모임 수
		int joincount = myPageService.joincount(id);

		// 만든 모임 수
		int makecount = myPageService.makecount(id);

		mv.setViewName("mypage/mypage6");
		mv.addObject("mypage", users);
		mv.addObject("list", list);
		mv.addObject("postlist", postList);
		mv.addObject("commlist", commList);
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("limit", limit);
		mv.addObject("postcount", postcount);
		mv.addObject("commcount", commcount);
		mv.addObject("msgcount", msgcount);
		mv.addObject("favlist", favlist);
		mv.addObject("favcount", favcount);
		mv.addObject("grouplist", groupList);
		mv.addObject("mylist", mygroupList);
		mv.addObject("joincount", joincount);
		mv.addObject("makecount", makecount);

		return mv;
	}

}
