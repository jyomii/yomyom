package co.pr.fi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.pr.fi.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	MyPageService myPageService;
	
	@RequestMapping(value="/mypage")
	public String mypageMain() {
		return "/mypage";
	}
	
	@RequestMapping(value="/mypage2", method = RequestMethod.GET)
	public String myedit() {
		return "/mypage2";
	}
	
	@RequestMapping(value="/mypage3", method = RequestMethod.GET)
	public String myedit2() {
		return "/mypage3";
	}
	
}
