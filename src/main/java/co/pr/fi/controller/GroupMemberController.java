package co.pr.fi.controller;

import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GGroup;
import co.pr.fi.service.GroupMemberService;

@Controller
public class GroupMemberController {

	@Autowired
	GroupMemberService groupMemberService;
	
	/* ############임시############## */
	
	// 모임 메인 페이지 이동
	@GetMapping("/groupmain")
	public String groupmain (Model m) {
		// 유저키 임시
		m.addAttribute("userKey", 2);
		return "groupin_group_main";
	}

	// 모임 회원 상세 페이지 이동
	@GetMapping("/G_mem_detail")
	public ModelAndView GmemDetail (int userKey, ModelAndView mv) {
		System.out.println("gMem GET!!!");
		
		List<GGroup> list = new ArrayList<GGroup>();
		list = groupMemberService.userInGroup(userKey);
		
		mv.addObject("list", list);
		mv.setViewName("G_mem_detail");
		return mv;
	}
	
	// 모임 회원 상세 정보 
	@ResponseBody
	@PostMapping("/G_mem_detail")
	public Object memDetail (int userKey, int menu) {
		// # 200120 userKey 부분 String-int 문제있음 
		System.out.println("gMem POST!!!");
		List<GGroup> list = new ArrayList<GGroup>();
		switch (menu) {
		case 0 :
			// 가입한 모임
			list = groupMemberService.userInGroup(userKey);
			break;
		case 1 :
			// 작성한 글
			
			break;
		case 2 : 
			// 작성한 댓글
			
			break;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("", list);
		map.put("", list);
		return map;
	}
	
	/* ########################## */
}
