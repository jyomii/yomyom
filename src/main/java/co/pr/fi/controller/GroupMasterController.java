package co.pr.fi.controller;

import java.util.List;

import javax.servlet.http.Cookie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GGroup;
import co.pr.fi.service.GroupMasterService;
import co.pr.fi.service.MemberService;

@Controller
public class GroupMasterController {
	@Autowired
	GroupMasterService groupMasterService;

	@Autowired
	MemberService memberService;

	
	
	@PostMapping("/insertGroup")
	public void insertGroup(GGroup group) {
		
		
	}
	@ResponseBody
	@PostMapping("/checkGroupName")
	public int checkGroupName(String name) {
		
		
		return groupMasterService.checkGroupName(name);

	}

	@GetMapping("/groupCreate")
	public ModelAndView groupCreate(ModelAndView mv) {

		List<GCategory> dcategory = memberService.getDCategory();
		List<GCategory2> scategory = memberService.getSCategory();

		mv.addObject("dcategory", dcategory);
		mv.addObject("scategory", scategory);

		mv.setViewName("group_create");
		return mv;

	}
}
