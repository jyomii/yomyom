package co.pr.fi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import co.pr.fi.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	
	
	@GetMapping("/login")
	public String login() {
		return "group_create";
	}
}
