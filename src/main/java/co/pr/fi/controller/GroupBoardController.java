package co.pr.fi.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonArray;

import co.pr.fi.domain.Maps;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupBoardService;

@Controller
public class GroupBoardController {

	@Autowired
	GroupBoardService groupBoardService;

	// 게시글 보기
	@GetMapping("/detailBoard")
	public ModelAndView detailBoard (String postkey, String groupkey, ModelAndView mv) {
		// ## 가져와야 할 List ##
		// 유저 프사(profileFile), 유저 닉네임(groupNickname)															-- GGROUPMEMBER
		// 글제목(POSTTITLE), 글 작성일(POSTDATE), 글내용(POSTCONTENT), 조회수(VIEWCOUNT), 댓글수(REPLYCOUNT), 좋아요수(LIKE)	-- POST
		// 해당 글에 달린 댓글																							-- GCOMMENT
		// userkey, postkey, commentkey
		Post post = new Post();
		Map<String, String> keys = new HashMap<String, String>();
		keys.put("postkey", postkey);
		keys.put("groupkey", groupkey);
		post = groupBoardService.detailBoard(keys);	
		
		if (post != null) {
			mv.addObject("post", post);
			mv.setViewName("G_detailBoard");
			return mv;
		}
		
		mv.addObject("죄송합니다. 게시글을 조회할 수 없습니다.", "error");
		mv.setViewName("error");
		return mv;
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
