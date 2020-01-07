package co.pr.fi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;

	@GetMapping("/login")
	public String login() {
		return "landing";
	}

	@PostMapping("/loginprocess")
	public ModelAndView loginProcess(String id, String password, ModelAndView mv) {

		memberService.isMember();
		mv.setViewName("home");
		
		return mv;
	}
}
