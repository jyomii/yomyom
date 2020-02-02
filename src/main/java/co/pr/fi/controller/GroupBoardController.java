package co.pr.fi.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

@Controller
public class GroupBoardController {

	@Autowired
	GroupBoardService groupBoardService;

	// 게시글 보기
	@PostMapping("/detailBoard.net")
	public String detailBoard ( @RequestParam(required = false, defaultValue = "0") int postKey, 
								@RequestParam(required = false, defaultValue = "0") int groupKey, 
								Model m) {
		// 확인용 sysout
		System.out.println("##### groupkey = " + groupKey + " | postkey = " + postKey + " #####");
		
		Map<String, Integer> keys = new HashMap<String, Integer>();
		Post post = new Post();	// 게시글 관련
		List<GComment> commentList = new ArrayList<GComment>();	// 댓글 관련
		
		keys.put("postkey", postKey);
		keys.put("groupkey", groupKey);
		post = groupBoardService.detailBoard(keys);	
		commentList = groupBoardService.getBoardComment(keys);
		
		if (post != null) {
			m.addAttribute("post", post);
			m.addAttribute("comment", commentList);
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
