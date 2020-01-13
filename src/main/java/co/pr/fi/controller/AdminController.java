package co.pr.fi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.StatisticsAge;
import co.pr.fi.domain.StatisticsCategory;
import co.pr.fi.domain.StatisticsJoinDate;
import co.pr.fi.domain.StatisticsLocation;
import co.pr.fi.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;

	
	
	
	@ResponseBody
	@PostMapping("/AdminSearchUser")
	public List<GUsers> AdminSearchUser(String keyword){
		return adminService.AdminSearchUser(keyword);
	}
	@ResponseBody
	@PostMapping("/AdmindeleteUser")
	public int AdmindeleteUser(String id) {

		/* status : 0 : 정상
		 * status : 1 : 탈퇴예정 (스스로)
		 * status : 2 : 강제탈퇴 (운영자)
		 * status : 3 : 정지*/
		
		return adminService.AdmindeleteUser(id);

	}

	@ResponseBody
	@PostMapping("/adminusercategory")
	public List<String> getAdminusercategory(String id) {

		List<String> list = adminService.getAdminusercategory(id);

		return list;

	}

	@GetMapping("/admin")
	public ModelAndView admin1(ModelAndView mv) {

		List<StatisticsAge> age = adminService.statisticsAge();
		List<StatisticsLocation> location = adminService.statisticsLocation();
		List<StatisticsJoinDate> joindate = adminService.StatisticsJoinDate();
		List<StatisticsCategory> category = adminService.statisticsCategory();

		mv.addObject("age", age);

		mv.addObject("location", location);
		mv.addObject("joindate", joindate);
		mv.addObject("category", category);
		mv.setViewName("adminpage");

		return mv;
	}

	// ModelAndView

	@GetMapping("/adminusers")
	public ModelAndView adminusers(ModelAndView mv, @RequestParam(value = "type", defaultValue = "0") int type,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		// 한 페이지에 보여줄 갯수
		int limit = 10;

		// type :(status) 0 ==> 일반 유저들 전체 목록
		// type : 1 ==> 탈퇴 예정 유저들 전체 목록
		// type : 2 ==> 강제탈퇴 유저 목록
		// type : 3 ==> 정지 유저들 목록

		// 일반 리스트, 틸퇴 예정 리스트
		int glistcount = 0, jlistcount = 0;
		List<GUsers> gallList = null, jallList = null;

		glistcount = adminService.getListCount(0);
		jlistcount = adminService.getListCount(1);

		switch (type) {
		case 0:
			System.out.println("type : 0");
			gallList = adminService.getAllUserList(0, page, limit);
			jallList = adminService.getAllUserList(1, 1, limit);
			break;
		case 1:
			System.out.println("type : 1");
			gallList = adminService.getAllUserList(0, 1, limit);
			jallList = adminService.getAllUserList(1, page, limit);
			break;

		}

		// 일반 유저 목록
		mv.addObject("glistcount", glistcount);
		mv.addObject("gallList", gallList);
		mv.addObject("jlistcount", jlistcount);
		mv.addObject("jallList", jallList);
		mv.addObject("page", page);
		mv.addObject("type", type);
		mv.setViewName("adminpage2");
		return mv;
	}

	@ResponseBody
	@PostMapping("/adminusers")
	public List<GUsers> adminusers2(@RequestParam(value = "type", defaultValue = "0") int type,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		// 한 페이지에 보여줄 갯수
		int limit = 10;

		List<GUsers> allList = null;
		allList = adminService.getAllUserList(type, page, limit);

		return allList;
	}

}
