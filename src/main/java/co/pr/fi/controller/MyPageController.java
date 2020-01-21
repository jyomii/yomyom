package co.pr.fi.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GUsers;
import co.pr.fi.service.MemberService;
import co.pr.fi.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	MyPageService myPageService;
	
	/*
	@RequestMapping(value="/mypage")
	public String mypageMain() {
		return "/mypage";
	}
	*/
	
	@RequestMapping(value="/mypage2", method = RequestMethod.GET)
	public String myedit() {
		return "/mypage2";
	}
	
	@RequestMapping(value="/mypage3", method = RequestMethod.GET)
	public String myedit2() {
		return "/mypage3";
	}
	/*
	@GetMapping(value="/mypage")
	public ModelAndView mypageInfo(ModelAndView mv) {
		
		mv.setViewName("mypage/info");
		mv.addObject("userId", userId);
		mv.addObject("user", r_listCount);
		mv.addObject("defaultGroup", defaultGroup);
		mv.addObject("requestGroup", requestGroup);
		
		return mv;
		
	}
	*/
	
	  @RequestMapping(value = "/mypage")
	   public ModelAndView mypageinfo(HttpSession session, 
			            @RequestParam("id") String id,
	    		HttpServletRequest request, ModelAndView mv) {
	      GUsers user = myPageService.userinfo(id);
	      mv.setViewName("mypage/mypageinfo");
	      mv.addObject("mypage", user);
	      return mv;
	   }
	  
	  //수정폼
	    @RequestMapping(value="/mypage2")
	    public ModelAndView update(HttpSession session, ModelAndView mv) throws Exception {
	    	String id = (String) session.getAttribute("id");
	    	GUsers user = myPageService.userinfo(id);
	    	mv.setViewName("mypage/myupdate");
	    	mv.addObject("mypage", user);
	    	return mv;
	    }
			
	    //수정처리
	    @RequestMapping(value="/updateprocess", method= RequestMethod.POST)
	    public ModelAndView updateProcess(GUsers user,
	            HttpServletResponse response) throws Exception {
	       response.setContentType("text/html;charset=utf-8");
	       PrintWriter out = response.getWriter();
	       int result = myPageService.myupdate(user);
	       out.println("<script>");
	       //수정 된 경우
	       if(result==1) {
	           out.println("alert('수정 완료');");
	           out.println("location.href='mypage';");
	       }else {
	    	   out.println("alert('수정 실패');");
	           out.println("history.back()");
	       }
	       out.println("</script>");
	       out.close();
	      return null;
	   }
	   
}
