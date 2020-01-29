package co.pr.fi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.pr.fi.dao.MainHeaderDAO;

@Controller
public class MainHeaderController {

	@Autowired
	MainHeaderDAO mainHeaderDAO;
	
	
	//메인페이지로 이동하는 mapping
	@RequestMapping(value="/main2")
	public String main() {
		return "mainpage/main2";
	}
	
	//메인페이지로 이동하는 mapping
	@RequestMapping(value="/searchresult")
	public String resultpage() {
		return "mainpage/searchresult";
	}
	
	
}
