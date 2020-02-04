package co.pr.fi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.pr.fi.domain.GComment;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.Maps;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupBoardService;

import co.pr.fi.service.GroupService;

import co.pr.fi.service.GroupMemberService;


@Controller
public class GroupBoardController {

	@Autowired
	GroupBoardService groupBoardService;

	@Autowired
	private GroupService groupservice;

	
	@Autowired
	GroupMemberService groupMemberService;
	
	// 좋아요/좋아요 취소
	@ResponseBody
	@PostMapping("/changeLike")
	public Object changeLike (@RequestParam(required = false, defaultValue = "0") int postKey,
							  @RequestParam(required = false, defaultValue = "0") int groupKey,
							  @RequestParam(required = false, defaultValue = "2") int status,
							  HttpSession session) {
		System.out.println("## 좋아요/좋아요 취소 ##");
		System.out.println("postKey = " + postKey + " groupKey = " + groupKey + " status = " + status);
		
		Map<String, Object> keys = new HashMap<String, Object>();
		int result = -1;
		int userkey = 0;
		int postLike = 0;
		
		// 로그인 안 한 상태로 페이지 접속 시도 시 
		if (session.getAttribute("id") == null) {
			keys.put("result", -3);
		} else {
			userkey = groupMemberService.getUser((String)session.getAttribute("id"));
		}
		
		keys.put("postkey", postKey);
		keys.put("groupkey", groupKey);
		keys.put("userkey", userkey);
		
		switch(status) {
		case 0 :
			// 좋아요
			result = groupBoardService.doLike(keys);
			postLike = groupBoardService.likeCount(keys);
			if (result == 0)	// update 된 게 없으면 
				result = -1;	// 좋아요 실패
			break;
		case 1 :
			// 좋아요 취소
			result = groupBoardService.revokeLike(keys);
			if (result == 1) 	// update 된 게 있으면
				result = 0;		// 취소 성공
			else 
				result = -2;	// 취소 실패
			break;
		case 2 :
			System.out.println("여기로 들어올 일이 있을까?");
			break;
		}
		
		keys.put("result", result);			// -1(실패), 0(좋아요취소 상태), 1(좋아요 상태)
		keys.put("likeCount", postLike);	// 글 좋아요 수
		return keys;
	}
	
	// 게시글 보기
	@PostMapping("/detailBoard.net")
	public String detailBoard ( @RequestParam(required = false, defaultValue = "0") int postKey, 
								@RequestParam(required = false, defaultValue = "0") int groupKey, 
								@RequestParam(required = false, defaultValue = "1") int page,
								@RequestParam(required = false, defaultValue = "10") int limit,
								HttpSession session, HttpServletResponse response, Model m) throws IOException {
		
		System.out.println("## 게시글 상세 보기 ##");
		System.out.println("groupkey = " + groupKey + " | postkey = " + postKey + " | page = " + page + " | limit = " + limit);
		
		int userkey = 0;
		
		// 로그인 안 한 상태로 페이지 접속 시도 시 
		if (session.getAttribute("id") == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location.href = 'login'");
			out.println("</script>");
			out.close();
		} else {
			userkey = groupMemberService.getUser((String)session.getAttribute("id"));
		}
		
		Map<String, Object> keys = new HashMap<String, Object>();
		Post post = new Post();	// 게시글 관련
		List<GComment> commentList = new ArrayList<GComment>();	// 댓글 관련
		
		int listcount = 0;
		
		keys.put("postkey", postKey);
		keys.put("groupkey", groupKey);
		
		listcount = groupBoardService.getCommentCount(keys); 	// 현재 게시글에 해당하는 댓글수
		post = groupBoardService.detailBoard(keys);				// 현재 게시글에 대한 데이터
		
		keys.put("page", page);
		keys.put("limit", limit);
		commentList = groupBoardService.getBoardComment(keys);	// 현재 게시글에 해당하는 댓글리스트
		
		keys.put("userkey", userkey);
		int isLiked = groupBoardService.isLiked(keys);
		GGroupMember mem = groupMemberService.getPic(keys);
		
		keys = pagination(page, limit, listcount);
		
		if (post != null) {
			m.addAttribute("post", post);
			m.addAttribute("comment", commentList);	// 댓글 리스트
			m.addAttribute("isLiked", isLiked);	// 1(좋아요) or 0(좋아요 x)
			m.addAttribute("postKey", postKey);
			m.addAttribute("groupKey", groupKey);
			m.addAttribute("page", keys.get("page"));
			m.addAttribute("limit", keys.get("limit"));
			m.addAttribute("listcount", keys.get("listcount"));
			m.addAttribute("mem", mem);
			return "G_detailBoard";
		}
		m.addAttribute("죄송합니다. 게시글을 조회할 수 없습니다.", "error");
		return "error";
	}

	/* 지도 맵 추가하기 예제입니다. */
	@GetMapping("/DrawMap")
	public String DrawMap() {
		return "exampleMap";
	}
	
	/*새로운 지도 만들기*/
	@GetMapping("/uploadMap")
	public String uploadMap() {
		groupBoardService.deleteAllMap();
		return "uploadMap";
	}

	/*새롭게 만든 지도 저장하기*/
	@ResponseBody
	@PostMapping("/saveMap")
	public int saveMap(@RequestParam(value = "info") String info,@RequestParam(value = "postkey") int postkey) throws JsonParseException, JsonMappingException, IOException {
		groupservice.updateboardmap(postkey);
		ObjectMapper mapper = new ObjectMapper();
		List<Maps> list = Arrays.asList(mapper.readValue(info, Maps[].class));
		for(int i = 0; i < list.size(); i++)
			System.out.println(list.get(i).toString());
		return groupBoardService.uploadMap(list);

	}
	
	/*저장했던 지도 가져오기*/
	@ResponseBody
	@GetMapping("/getMap")
	public List<Maps> getMap(int postkey){
		
		return groupBoardService.getMap(postkey);
		
	}
	
	@ResponseBody
	@GetMapping("/deleteMap")
	public int deleteMap() {
		return groupBoardService.deleteAllMap();
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
