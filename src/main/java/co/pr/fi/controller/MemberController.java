package co.pr.fi.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GLocation;
import co.pr.fi.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;

	@GetMapping("/login")
	public ModelAndView login(ModelAndView m) {
		
		
		List<GLocation> list = memberService.getLocationList();
		m.setViewName("landing");
		m.addObject("location",list);
		
		return m;
	}
	
	
	@ResponseBody
	@PostMapping("/idcheck")
	public int idcheck(String id) {
		
		
		return memberService.idCheck(id);
		
	}

	@PostMapping("/loginprocess")
	public ModelAndView loginProcess(String id, String password, ModelAndView mv) {

		memberService.isMember();
		mv.setViewName("home");
		
		return mv;
	}
}
