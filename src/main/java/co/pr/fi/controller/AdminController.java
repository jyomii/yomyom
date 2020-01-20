package co.pr.fi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategoryName;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.PoliceResult;
import co.pr.fi.domain.RequestCategory;
import co.pr.fi.domain.StatisticsAge;
import co.pr.fi.domain.StatisticsCategory;
import co.pr.fi.domain.StatisticsJoinDate;
import co.pr.fi.domain.StatisticsLocation;
import co.pr.fi.domain.UserMessage;
import co.pr.fi.service.AdminService;
import co.pr.fi.service.CategoryService;
import co.pr.fi.service.MessageService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	MessageService messageService;

	@ResponseBody
	@PostMapping("/deleteNotice")
	// 개힘들었다...ajax로 배열 데이터 받을떄 이렇게 받아야함..ㅠㅠ
	public int deleteNotice(@RequestParam(value = "key[]") List<Integer> key) {

		return adminService.deleteNotice(key);

	}
	
	
	
	@ResponseBody
	@PostMapping("/recoveryUser")
	public int recoveryUser(String id) {
		
		//일반 회원으로 복구
		return adminService.setUserStatus(id,0);
		
	}
	
	
	@ResponseBody
	@PostMapping("/moreGroupList")
	public List<GGroup> moreGroupList(int page, int type){
		int limit = 10;
		return adminService.getAllGroupList(type, page, limit);
	}
	
	//모임장에게 관리자가 메세지 보내기
	@ResponseBody
	@PostMapping("/SendUserMessage")
	public int SendUserMessage(UserMessage message) {
		
		message.setMgSend(0);
		message.setMgSort("D"); //쪽지 D: 일반 메세지
	
		return messageService.sendMessage(message);
	}
	
	
	@ResponseBody
	@PostMapping("/negativeGroup")
	public int negativeGroup(int key) {
		
		if(adminService.deleteGroupMember(key) == 1) 
		return adminService.negativeGroup(key);
		else
		return 0;
	}
	
	
	@ResponseBody
	@PostMapping("/acceptGroup")
	public int acceptGroup(int key) {
		
		return adminService.acceptGroup(key);
		
	}

	@ResponseBody
	@GetMapping("/moreNotice")
	public List<UserMessage> moreNotice(int page) {
		int limit = 10;
		return adminService.getNotice(page, limit);
	}

	@PostMapping("/newNotice")
	public void newNotice(String newNotice, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=utf-8");
		
		UserMessage message = new UserMessage();
		message.setMgContent(newNotice);
		message.setMgSend(0);
		message.setMgSort("N");
		message.setMgReceive(0); //공지사항 받는사람 0으로 처리함 일단
		
		int result = messageService.sendMessage(message);
		PrintWriter out = resp.getWriter();
		if (result == 1) {
			out.println("<script>alert('추가되었습니다.'); location.href='adminnotice';</script>");
		} else {
			out.println("<script>alert('추가되지 않았습니다.') history.back();</script>");
		}
		out.close();
	}

	@GetMapping("/adminnotice")
	public ModelAndView notice(ModelAndView mv) {

		// 한 페이지에 보여줄 갯수
		int limit = 10;
		int page = 1;

		List<UserMessage> notice = adminService.getNotice(page, limit);
		mv.addObject("notice", notice);
		mv.setViewName("admin/adminnotice");

		return mv;
	}

	@ResponseBody
	@PostMapping("/AdminInsertCategory")
	public int AdminInsertCategory(@RequestParam(value = "sname", required = false) String sname, String dname) {

		int result;
		if (sname.equals("") || sname == null) {
			GCategory c = new GCategory();
			c.setDCategoryName(dname);

			categoryService.addDCategory(c);

			result = c.getDCategoryKey();
		} else {
			result = addCategory(sname, dname);
		}

		if (result > 0) {

			// 해당 요청 삭제
			return categoryService.deleteRequestCategory(sname, dname);

		} else {
			return 0;
		}

	}

	public int addCategory(String sname, String dname) {
		// 대분류/소분류 있는지 여부 확인
		int isCategory = categoryService.isCategory(sname, dname);

		if (isCategory == 1) {
			// 이미 있는 카테고리
			return 0;
		} else {

			// 없는 카테고리

			// 대분류 코드 가져오기
			int isDCategory = categoryService.isDCategory(dname);

			// 대분류 코드가 있으면 바로 gcategory2 테이블에 추가
			if (isDCategory > 0) {

				return categoryService.addSCategory(isDCategory, sname);

			} else {

				// 없으면 대분류 코드 만들고 gcategory2 테이블에 추가
				GCategory c = new GCategory();
				c.setDCategoryName(dname);
				categoryService.addDCategory(c);
				
				int dkey = c.getDCategoryKey();
				return categoryService.addSCategory(dkey, sname);

			}

		}

	}

	@ResponseBody
	@PostMapping("/AdminAddCategory")
	public int AdminAddCategory(String sname, String dname) {

		return addCategory(sname, dname);

	}

	@GetMapping("/admincategory")
	public ModelAndView AdminCategory(ModelAndView mv) {

		// 모든 카테고리 항목 불러오기
		List<GCategoryName> list = categoryService.getAdminCategory();
		// 카테고리 요청목록 불러오기
		List<RequestCategory> listCategory = categoryService.getRequestCategory();
		mv.addObject("categorylist", list);
		mv.addObject("listCategory", listCategory);
		mv.setViewName("admin/admincategory");
		return mv;

	}

	@ResponseBody
	@PostMapping("/AdminSearchUser")
	public List<GUsers> AdminSearchUser(String keyword) {
		return adminService.AdminSearchUser(keyword);
	}

	@ResponseBody
	@PostMapping("/AdmindeleteUser")
	public int AdmindeleteUser(String id) {

		/*
		 * status : 0 : 정상 status : 1 : 탈퇴예정 (스스로) status : 2 : 강제탈퇴 (운영자) status : 3 :
		 * 정지
		 */

		return adminService.AdmindeleteUser(id);

	}

	@ResponseBody
	@PostMapping("/adminusercategory")
	public List<String> getAdminusercategory(String id) {

		List<String> list = categoryService.getAdminusercategory(id);

		return list;

	}

	@GetMapping("/admin")
	public ModelAndView admin1(ModelAndView mv) {

		List<StatisticsAge> age = adminService.statisticsAge(); //회원 연령대 통계
		List<StatisticsLocation> location = adminService.statisticsLocation(); //회원 지역 통계
		List<StatisticsJoinDate> joindate = adminService.StatisticsJoinDate(); //회원 가입 수 통계
		
		List<StatisticsCategory> ucategory = adminService.statisticsUCategory(); //회원 카테고리 통계
		
		
		List<StatisticsCategory> gcategory = adminService.statisticsCategory(); //모임 카테고리 통계
		List<StatisticsAge> gage = adminService.statisticsGAge(); //모임 연령대 통계 
		List<StatisticsLocation> glocation = adminService.statisticsgLocation(); //모임 지역 통계 
		
		
		mv.addObject("age", age);

		mv.addObject("location", location);
		mv.addObject("joindate", joindate);
		mv.addObject("category", gcategory);
		mv.addObject("ucategory", ucategory);
		mv.addObject("gage", gage);
		mv.addObject("glocation", glocation);
		mv.setViewName("admin/adminmain");

		return mv;
	}

	// ModelAndView

	@GetMapping("/admingroup")
	public ModelAndView adminGroup(ModelAndView mv) {

		// 한 페이지에 보여줄 갯수
		int limit = 10;
		// 현재 페이지
		int page = 1;

		int d_listCount = adminService.getGroupListCount(0);
		int r_listCount = adminService.getGroupListCount(1);

		List<GGroup> defaultGroup = adminService.getAllGroupList(0, page, limit);
		List<GGroup> requestGroup = adminService.getAllGroupList(1, page, limit);

		mv.setViewName("admin/admingroup");
		mv.addObject("d_listCount", d_listCount);
		mv.addObject("r_listCount", r_listCount);
		mv.addObject("defaultGroup", defaultGroup);
		mv.addObject("requestGroup", requestGroup);

		return mv;
	}

	@GetMapping("/adminusers")
	public ModelAndView adminusers(ModelAndView mv, @RequestParam(value = "type", defaultValue = "1") int type,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		// 한 페이지에 보여줄 갯수
		int limit = 10;

		// type :(status) 0 ==> 일반 유저들 전체 목록
		// type : 1 ==> 탈퇴 예정 유저들 전체 목록
		// type : 2 ==> 강제탈퇴 유저 목록
		// type : 3 ==> 정지 유저들 목록

		// 일반 리스트, 탈퇴 예정 리스트 //강제탈퇴 리스트 //정지 유저 목록
		int glistcount = 0, jlistcount = 0, tlistcount = 0, stoplistcount = 0;
		List<GUsers> gallList = null, jallList = null, tallList = null, stopallList = null;

		glistcount = adminService.getListCount(0);
		jlistcount = adminService.getListCount(1);
		tlistcount = adminService.getListCount(2);
		stoplistcount = adminService.getListCount(3);

		type = type - 1;

		switch (type) {
		case 0:
			System.out.println("type : 0");
			gallList = adminService.getAllUserList(0, page, limit);
			jallList = adminService.getAllUserList(1, 1, limit);
			tallList = adminService.getAllUserList(2, 1, limit);
			stopallList = adminService.getAllUserList(3, 1, limit);
			break;
		case 1:
			System.out.println("type : 1");
			gallList = adminService.getAllUserList(0, 1, limit);
			jallList = adminService.getAllUserList(1, page, limit);
			tallList = adminService.getAllUserList(2, 1, limit);
			stopallList = adminService.getAllUserList(3, 1, limit);
			break;
		case 2:
			System.out.println("type : 2");
			gallList = adminService.getAllUserList(0, 1, limit);
			jallList = adminService.getAllUserList(1, 1, limit);
			tallList = adminService.getAllUserList(2, page, limit);
			stopallList = adminService.getAllUserList(3, 1, limit);
			break;
		case 3:
			System.out.println("type : 3");
			gallList = adminService.getAllUserList(0, 1, limit);
			jallList = adminService.getAllUserList(1, 1, limit);
			tallList = adminService.getAllUserList(2, 1, limit);
			stopallList = adminService.getAllUserList(3, page, limit);
			break;
		}

		List<PoliceResult> policeResult = adminService.adminPolice();

		// 일반 유저 목록

		mv.addObject("glistcount", glistcount);
		mv.addObject("gallList", gallList);
		mv.addObject("jlistcount", jlistcount);
		mv.addObject("jallList", jallList);

		mv.addObject("tlistcount", tlistcount);
		mv.addObject("tallList", tallList);
		mv.addObject("stoplistcount", stoplistcount);
		mv.addObject("stopallList", stopallList);

		mv.addObject("policeResult", policeResult);
		mv.addObject("page", page);
		mv.addObject("type", ++type);
		mv.setViewName("admin/adminusers");
		return mv;
	}

	@ResponseBody
	@PostMapping("/adminusers")
	public List<GUsers> adminusers2(@RequestParam(value = "type", defaultValue = "1") int type,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		// 한 페이지에 보여줄 갯수
		int limit = 10;
		type = type -1;

		List<GUsers> allList = null;
		allList = adminService.getAllUserList(type, page, limit);

		return allList;
	}

}
