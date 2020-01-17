package co.pr.fi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import co.pr.fi.service.GroupPlaceService;

@Controller
public class GroupPlaceController {

	@Autowired
	GroupPlaceService groupPlaceService;
	
	/* ############임시############## */
	// 모임 메인 페이지 이동
	@GetMapping("/groupmain")
	public String groupmain (Model m) {
		// 유저키 임시
		m.addAttribute("userkey", 22);
		return "groupin_group_main";
	}

	// 모임 회원 상세 페이지 이동
	@GetMapping("/G_mem_detail")
	public String memDetail (int userkey, String menu, Model m) {
		// 처음 접속 시 유저의 가입한 모임 나열 -- 근데 모임공개여부가 검색할 때 제외인지 다른 회원의 모임 가입 목록에서 보여지는 데에도 제외인지 내일 여쭤보쟈 

		return "G_mem_detail";
	}
	/* ########################## */
}
