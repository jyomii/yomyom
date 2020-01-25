package co.pr.fi.controller;

import java.io.File;
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
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.JoinAnswer;
import co.pr.fi.domain.JoinQuest;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupMemberService;

@Controller
public class GroupMemberController {

	@Autowired
	GroupMemberService groupMemberService;
	
	// 모임 메인 페이지 이동
	@GetMapping("/groupmain")
	public String groupmain (@RequestParam(defaultValue = "0") int groupKey, Model m) {
		// 모임 회원 상세 정보 페이지 -> 가입한 모임 -> 해당 모임 메인 페이지로 이동할 수 있게 코드 추가해야댐 
		// 유저키 임시
		m.addAttribute("userKey", 2);
		return "groupin_group_main";
	}
	
	// 모임 가입 페이지 이동  
	@GetMapping("/signGroup")
	public ModelAndView signGroup (ModelAndView mv) {
		System.out.println("모임 가입 페이지 이동");
		// 모임의 가입 양식을 가져온다.
		int groupKey = 1;
		int userKey = 1;
		
		List<JoinQuest> list = groupMemberService.getJoinSample(groupKey);
		System.out.println("###################" + list.get(0).getQuest3());
		mv.addObject("quest1", list.get(0).getQuest1());
		mv.addObject("quest2", list.get(0).getQuest2());
		mv.addObject("quest3", list.get(0).getQuest3());
		mv.addObject("quest4", list.get(0).getQuest4());
		mv.addObject("quest5", list.get(0).getQuest5());
		mv.addObject("introduce", list.get(0).getIntroduce());
		mv.addObject("groupKey", groupKey);
		mv.addObject("userKey", userKey);
		mv.setViewName("G_signup");
		return mv;
	}
	
	// 모임 가입하기
	@PostMapping("/joinGroupAction")
	public String joinGroupAction(GGroupMember mem, JoinAnswer answer, int groupKey, int userKey) {
		
		String filePath = "C:/groupin"; // 파일 저장 경로, 설정파일로 따로 관리한다.
		File dir = new File(filePath); 	// 파일 저장 경로 확인, 없으면 만든다.
		if (!dir.exists()) {
			dir.mkdirs();
		}
		
		// 이미지 갖고오는 거 하기 ################ 
		// int result = groupMemberService.joinGroup(groupKey, userKey, mem);
		return "";
	}
	
	// 모임 추천 페이지 이동
	@GetMapping("/recommendG")
	public String recommendGroup () {
		return "G_recommendGroup";
	}
	
	// 모임 회원 상세 페이지 이동
	@GetMapping("/G_mem_detail")
	public ModelAndView GmemDetail (@RequestParam(required = false, defaultValue = "0") int userKey, 
									HttpServletResponse response, 
									ModelAndView mv) throws IOException {
		System.out.println("### 모임 회원 상세정보 GET ###");
		
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
		System.out.println("### 모임 회원 상세정보 POST ###");
		
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
			temp.put("userKey", userKey);
			temp.put("groupKey", groupKey);
			
			postList = groupMemberService.postByCommented(temp);
			
			result.put("list", postList);
			result.put("menu", menu);
			break;
		}
		return result;
	}
}
