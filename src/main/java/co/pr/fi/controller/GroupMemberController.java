package co.pr.fi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupMemberService;

@Controller
public class GroupMemberController {

	@Autowired
	GroupMemberService groupMemberService;
	
	/* ############임시############## */
	// 모임 메인 페이지 이동
	@GetMapping("/groupmain")
	public String groupmain (@RequestParam(defaultValue = "") int groupKey, Model m) {
		// 모임 회원 상세 정보 페이지 -> 가입한 모임 -> 해당 모임 메인 페이지로 이동할 수 있게 코드 추가해야댐 
		// 유저키 임시
		m.addAttribute("userKey", 2);
		return "groupin_group_main";
	}
	
	// 모임 가입 페이지 이동
	@GetMapping("/signGroup")
	public String signGroup () {
		return "G_signup";
	}
	
	// 모임 추천 페이지 이동
	@GetMapping("/recommendG")
	public String recommendGroup () {
		return "G_recommendGroup";
	}
	
	// 게시글 보기
	@GetMapping("/detailBoard")
	public ModelAndView detailBoard (ModelAndView mv) {
		String id = "";
		mv.addObject("", id);
		mv.setViewName("G_detailBoard");
		return mv;
	}
	
	// 모임 회원 상세 페이지 이동
	@GetMapping("/G_mem_detail")
	public ModelAndView GmemDetail (@RequestParam(required = false, defaultValue = "0") int userKey, 
									HttpServletResponse response, 
									ModelAndView mv) throws IOException {
		System.out.println("모임 회원 상세정보 GET!!!");
		
		if (userKey == 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('죄송합니다.\\n해당 회원의 정보를 볼 수 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		List<GGroup> list = new ArrayList<GGroup>();
		list = groupMemberService.userInGroup(userKey);
		
		mv.addObject("list", list);
		mv.addObject("userKey", userKey);
		String groupKey = "3"; // 임시로 그룹키값 지정
		mv.addObject("groupKey", groupKey);
		mv.setViewName("G_mem_detail");
		return mv;
	}
	
	// 모임 회원 상세 정보 -- ajax
	@ResponseBody
	@PostMapping("/G_mem_details")
	public Object memDetail (String userKey, String groupKey, @RequestParam(defaultValue = "3") int menu) {
		System.out.println("userKey == > " + userKey);
		System.out.println("groupKey == > " + groupKey);
		System.out.println("모임 회원 상세정보 POST!!!");
		
		Map<String, Object> result = new HashMap<String, Object>();
		Map<String, Object> temp = new HashMap<String, Object>();
		List<GGroup> groupList = new ArrayList<GGroup>();
		List<Post> postList = new ArrayList<Post>();
		
		switch (menu) {
		case 0 : case 3 :
			// 가입한 모임
			groupList = groupMemberService.userInGroup(Integer.parseInt(userKey));
			result.put("list", groupList);
			result.put("menu", menu);
			break;
		case 1 :
			// 작성한 글
			temp.put("userKey", userKey);
			temp.put("groupKey", groupKey);
			postList = groupMemberService.wroteInGroup(temp);
			result.put("list", postList);
			result.put("menu", menu);
			break;
		case 2 : 
			// 작성한 댓글
			// 추가해야댐@@@
			break;
		}
		return result;
	}
	/* ########################## */
}
