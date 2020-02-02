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
import co.pr.fi.domain.Maps;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupBoardService;
import co.pr.fi.service.GroupMemberService;

@Controller
public class GroupBoardController {

	@Autowired
	GroupBoardService groupBoardService;
	
	@Autowired
	GroupMemberService groupMemberService;
	
	// 좋아요/좋아요 취소
	@ResponseBody
	@PostMapping("/changeLike")
	public Object changeLike (@RequestParam(required = false, defaultValue = "0") int postKey,
							  @RequestParam(required = false, defaultValue = "0") int groupKey,
							  @RequestParam(required = false, defaultValue = "2") int status,
							  HttpSession session) {
		System.out.println("## 좋아요/좋아요 취소 ## postKey = " + postKey + " groupKey = " + groupKey + " status = " + status);
		Map<String, Integer> keys = new HashMap<String, Integer>();
		int result = -1;
		int userKey = 0;
		int postLike = 0;
		
		// 로그인 안 한 상태로 페이지 접속 시도 시 
		if (session.getAttribute("id") == null) {
			keys.put("result", -3);
		} else {
			userKey = groupMemberService.getUser((String)session.getAttribute("id"));
		}
		
		keys.put("postKey", postKey);
		keys.put("groupKey", groupKey);
		keys.put("userKey", userKey);
		
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
								HttpSession session, HttpServletResponse response, Model m) throws IOException {
		// 확인용 sysout
		System.out.println("##### groupkey = " + groupKey + " | postkey = " + postKey + " #####");
		
		int userKey = 0;
		
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
			userKey = groupMemberService.getUser((String)session.getAttribute("id"));
		}
		
		Map<String, Integer> keys = new HashMap<String, Integer>();
		Post post = new Post();	// 게시글 관련
		List<GComment> commentList = new ArrayList<GComment>();	// 댓글 관련
		
		keys.put("postkey", postKey);
		keys.put("groupkey", groupKey);
		
		post = groupBoardService.detailBoard(keys);	
		commentList = groupBoardService.getBoardComment(keys);
		
		keys.put("userKey", userKey);
		int isLiked = groupBoardService.isLiked(keys);
		
		if (post != null) {
			m.addAttribute("post", post);
			m.addAttribute("comment", commentList);
			m.addAttribute("isLiked", isLiked);	// 1(좋아요) or 0(좋아요 x)
			m.addAttribute("postKey", keys.get("postkey"));
			m.addAttribute("groupKey", keys.get("groupkey"));
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
	public int saveMap(@RequestParam String info) throws JsonParseException, JsonMappingException, IOException {
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
}
