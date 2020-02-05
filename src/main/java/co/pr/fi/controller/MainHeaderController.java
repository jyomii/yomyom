package co.pr.fi.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.dao.MainHeaderDAO;
import co.pr.fi.domain.BestPost;
import co.pr.fi.domain.CalendarList;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.MemberList;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.Shortschedule;
import co.pr.fi.domain.UserRegGroup;
import co.pr.fi.service.CategoryService;
import co.pr.fi.service.GroupService;
import co.pr.fi.service.MainHeaderService;
import co.pr.fi.service.MemberService;
import co.pr.fi.service.MessageService;
import co.pr.fi.service.SearchService;

@Controller
public class MainHeaderController {


	@Autowired
	MainHeaderService mainHeaderService;
	@Autowired
	private GroupService groupservice;
	
	@Autowired
	GroupService groupService;
	@Autowired
	CategoryService categoryService;

	@Autowired
	SearchService SearchService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	MessageService messageService;

	// 메인페이지로 이동하는 mapping
	@RequestMapping(value = "/main2")
	public ModelAndView main(HttpSession session, ModelAndView mv) {
		/**if(session.getAttribute("id") == null)
			session.setAttribute("userkey", -1);
		//베스트 : 인원수 가장 많은 모임 3개
		List<GGroup> bestgroup = mainHeaderService.getBestGroups();
		//인기글 : 최근 7일간 조회수가 높고, 좋아요 수가 많은 순 
		List<BestPost> post = mainHeaderService.getBestBoard(0);
		List<GGroup> reList;
		List<GGroup> groupList;
		GUsers gUsers = null; 
		//추천 : 관심 카테고리 목록중에서 인원수 제일 많은 모임 리스트 5개
		//로그인상태가 아니면 랜덤 카테고리 모임 5개
		
		//모임 목록 : 관심 카테고리 중 post 등록개수가 일주일간 제일 많은 수
				//로그인 상태가 아니면 모든 모임에서 ~
		if(session.getAttribute("id") != null) {
			gUsers = memberService.getUsers((String)session.getAttribute("id"));
			reList = mainHeaderService.getUserCategoryGroup(gUsers.getUserKey());
			groupList = mainHeaderService.getUserCategoryActiveGroupList(gUsers.getUserKey());
		}else {
			reList = mainHeaderService.getNotUserCategoryGroup();
			groupList = mainHeaderService.getNotUserActiveGroupList();
		}
		mv.setViewName("mainpage/main2");
		mv.addObject("bestgroup",bestgroup);
		mv.addObject("reList",reList);
		mv.addObject("bestboard",post);
		mv.addObject("groupList",groupList);
		mv.addObject("dcategory", categoryService.getDCategory());
		mv.addObject("scategory", categoryService.getSCategory());
		//mv.addObject("userInfo",gUsers);
		return mv;**/
		
		return group_main(mv,session);
	}

	@GetMapping("/main3")
	public ModelAndView group_main(ModelAndView mv, HttpSession session) {
		//베스트 : 인원수 가장 많은 모임 3개
		List<GGroup> bestgroup = mainHeaderService.getBestGroups();
		//인기글 : 최근 7일간 조회수가 높고, 좋아요 수가 많은 순 
		List<BestPost> post = mainHeaderService.getBestBoard(0);
		List<GGroup> reList;
		List<GGroup> groupList;
		GUsers gUsers = null; 
		//추천 : 관심 카테고리 목록중에서 인원수 제일 많은 모임 리스트 5개
		//로그인상태가 아니면 랜덤 카테고리 모임 5개
		
		//모임 목록 : 관심 카테고리 중 post 등록개수가 일주일간 제일 많은 수
				//로그인 상태가 아니면 모든 모임에서 ~
		if(session.getAttribute("id") != null) {
			gUsers = memberService.getUsers((String)session.getAttribute("id"));
			reList = mainHeaderService.getUserCategoryGroup(gUsers.getUserKey());
			groupList = mainHeaderService.getUserCategoryActiveGroupList(gUsers.getUserKey());
		}else {
			reList = mainHeaderService.getNotUserCategoryGroup();
			groupList = mainHeaderService.getNotUserActiveGroupList();
		}
		mv.setViewName("mainpage/realmain");
		mv.addObject("bestgroup",bestgroup);
		mv.addObject("reList",reList);
		mv.addObject("bestboard",post);
		mv.addObject("groupList",groupList);
		mv.addObject("dcategory", categoryService.getDCategory());
		mv.addObject("scategory", categoryService.getSCategory());
		//mv.addObject("userInfo",gUsers);
		int userkey=-1;
		System.out.println("userkey= "+userkey);
		if(session.getAttribute("id")!=null) {
			userkey = Integer.parseInt((session.getAttribute("userkey").toString()));
			mv.addObject("userkey",userkey);
			System.out.println("userkey성공= "+userkey);
		}else {
			mv.addObject("userkey",userkey);
			System.out.println("userkey실패= "+userkey);
		}
		System.out.println(session.getAttribute("id"));
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
		int date = c.get(Calendar.DATE);
		mv.setViewName("group/realmain");
		/*GGroupMember groupmember = groupservice.groupmember(userkey, groupkey);
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
		mv.addObject("groupmeetinglist", groupmeetinglist);*/
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
	
	// 전체 카테고리 목록 받아오기
	@ResponseBody
	@GetMapping("/allCategory")
	public Map<String, Object> allCategory() {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dcategory", categoryService.getDCategory());
		map.put("scategory", categoryService.getSCategory());

		return map;
	}

	// 모임 검색
	@GetMapping("/searchText")
	public ModelAndView searchText(String text, ModelAndView mv) {

		int page = 1;
		int limit = 3;

		// 모임명 검색
		List<GGroup> groupList = SearchService.searchGroups(text, page, limit);

		// 글 검색
		List<Post> postList = SearchService.searchPost(text, page, limit);
		
		int groupListCount =  SearchService.searchGroupsCount(text);
		int postListCount = SearchService.searchPostCount(text);
		
		mv.addObject("postListCount",postListCount);
		mv.addObject("groupListCount",groupListCount);
		mv.addObject("groupList", groupList);
		mv.addObject("postList", postList);
		mv.addObject("text", text);

		mv.setViewName("mainpage/searchresult");

		return mv;
	}

	// 검색 더보기
	@ResponseBody
	@PostMapping("/moreSearchList")
	public Map<String, Object> moreSearchList(String text, int page, int type) {
		int limit = 3;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", type == 0 ? SearchService.searchGroups(text, page, limit)
				: SearchService.searchPost(text, page, limit));

		return map;

	}
	
	@ResponseBody
	@GetMapping("readMessage")
	public void readMessage(HttpSession session) {
		
		
		
		GUsers user = memberService.getUsers( (String)session.getAttribute("id"));
		
		messageService.readMessage(user.getUserKey());
		
		
	}
	
	
	
	
	//카테고리 메인
	@GetMapping("/CateogryMain")
	public ModelAndView CateogryMain(ModelAndView mv, int categorykey) {
		
		
		
		//베스트 : 해당 카테고리의 인원수 가장 많은 모임 3개
		List<GGroup> bestgroup = mainHeaderService.getBestGroups(categorykey,3);
		
		//추천 : 해당 카테고리에서 인원수 제일 많은 모임 리스트 5개
		List<GGroup>reList = mainHeaderService.getBestGroups(categorykey,5);
		
		//모임 목록 : 해당 카테고리 중 post 등록개수가 일주일간 제일 많은 수
		List<GGroup> groupList = mainHeaderService.getCategoryActiveGroupList(categorykey);
		
		//인기글 : 최근 7일간 조회수가 높고, 좋아요 수가 많은 순 
		List<BestPost> post = mainHeaderService.getBestBoard(categorykey);
		
		
		mv.setViewName("group/category_main");
		mv.addObject("bestgroup",bestgroup);
		mv.addObject("bestboard",post);
		mv.addObject("reList",reList);
		mv.addObject("groupList",groupList);
		mv.addObject("dcategory", categoryService.getDCategory());
		mv.addObject("scategory", categoryService.getSCategory());

		return mv;
	}
}
