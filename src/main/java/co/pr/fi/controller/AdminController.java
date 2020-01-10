package co.pr.fi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.StatisticsAge;
import co.pr.fi.domain.StatisticsCategory;
import co.pr.fi.domain.StatisticsJoinDate;
import co.pr.fi.domain.StatisticsLocation;
import co.pr.fi.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	
	
	
	@GetMapping("/admin")
	public ModelAndView admin1(ModelAndView mv) {
		
		
		
		List<StatisticsAge> age =  adminService.statisticsAge();
		List<StatisticsLocation> location = adminService.statisticsLocation();
		List<StatisticsJoinDate> joindate = adminService.StatisticsJoinDate();
		List<StatisticsCategory> category = adminService.statisticsCategory();
		
		mv.addObject("age",age);
		mv.addObject("location",location);
		mv.addObject("joindate",joindate);
		mv.addObject("category",category);
		mv.setViewName("adminpage");
		
		return mv;
	}



	private void statisticsAge() {
		// TODO Auto-generated method stub
		
	}
}
