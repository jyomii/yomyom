package co.pr.fi.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	
	
	
	@GetMapping("/admin")
	public ModelAndView admin1(ModelAndView mv) {
		
		
		//연령대 분포
		// 10 : 5
		// 20 : 4 ...
		Map<String, Object> age =  adminService.statisticsAge();
		
		mv.setViewName("adminpage");
		
		return mv;
	}



	private void statisticsAge() {
		// TODO Auto-generated method stub
		
	}
}
