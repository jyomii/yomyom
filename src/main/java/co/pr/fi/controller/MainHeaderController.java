package co.pr.fi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.dao.MainHeaderDAO;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.Post;
import co.pr.fi.service.CategoryService;
import co.pr.fi.service.MainHeaderService;
import co.pr.fi.service.MemberService;
import co.pr.fi.service.MessageService;
import co.pr.fi.service.SearchService;

@Controller
public class MainHeaderController {

	@Autowired
	MainHeaderService mainHeaderService;

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
		
		
		
		//베스트 : 인원수 가장 많은 모임 3개
		List<GGroup> bestgroup = mainHeaderService.getBestGroups();
		
		List<GGroup> groupList;
		//모임 목록 : 관심 카테고리 목록중에서 인원수 제일 많은 모임 리스트 5개//로그인상태가 아니면 랜덤 카테고리 모임 5개
		if(session.getAttribute("id") != null) {
			GUsers gUsers = memberService.getUsers((String)session.getAttribute("id"));
			groupList = mainHeaderService.getUserCategoryGroup(gUsers.getUserKey());
		}else {
			groupList = mainHeaderService.getNotUserCategoryGroup();
		}
		
		//추천모임 : 관심 카테고리 중 post 등록개수가 일주일간 제일 많은 수
		
		
		mv.setViewName("mainpage/main2");
		mv.addObject("bestgroup",bestgroup);
		
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
}
