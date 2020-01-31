package co.pr.fi.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GUsers;
import co.pr.fi.service.MemberService;
import co.pr.fi.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	MyPageService myPageService;
	

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
	@RequestMapping(value="/mypage3", method = RequestMethod.GET)
	public String myedit2() {
		return "mypage/mypage3";
	}

	
	  @RequestMapping(value = "/mypage")
	   public ModelAndView mypageinfo(HttpSession session, 
	          HttpServletRequest request, ModelAndView mv) throws Exception {
		  String id = (String) session.getAttribute("id");
	      GUsers user = myPageService.userinfo(id);
	      
	      //가입한 모임
	      List<GGroup> groupList = new ArrayList<GGroup>();
	      groupList = myPageService.userJoinGroup(id);
	      
	      //만든 모임
	      List<GGroup> mygroupList = new ArrayList<GGroup>();
	      mygroupList = myPageService.userMakeGroup(id);
	      
	      //가입 모임 수
	      int joincount = myPageService.joincount(id);
	      
	      //만든 모임 수
	      int makecount = myPageService.makecount(id);
	      
	      //선택한 관심사
	      List<GCategory2> userInterest = new ArrayList<GCategory2>();
	      userInterest = myPageService.userInterest(id);
	      System.out.println("#################"+userInterest.get(0).getSCategoryName());
	      
	      mv.setViewName("mypage/mypage");
	      mv.addObject("mypage", user);
	      mv.addObject("list", groupList);
	      mv.addObject("mylist", mygroupList);
	      mv.addObject("joincount", joincount);
	      mv.addObject("makecount", makecount);
	      mv.addObject("userInterest", userInterest);
	      return mv;
	   }
	  
	  
	  //수정폼
	    @RequestMapping(value="/mypage2")
	    public ModelAndView update(HttpSession session, ModelAndView mv) throws Exception {
	    	String id = (String) session.getAttribute("id");
	    	GUsers user = myPageService.userinfo(id);
	    	mv.setViewName("mypage/mypage2");
	    	mv.addObject("mypage", user);
	    	return mv;
	    }
			
	    //수정처리
	    @RequestMapping(value="/updateprocess", method= RequestMethod.POST)
	    public ModelAndView updateProcess(GUsers user, HttpSession session,
	            HttpServletResponse response) throws Exception {
	       response.setContentType("text/html;charset=utf-8");
	       PrintWriter out = response.getWriter();
	       String id = (String) session.getAttribute("id");
	       user.setUserId(id);
	       
	       //모임 초대 여부
	       if (user.getUserOptionGroup() == null)
	    	   user.setUserOptionGroup("N");
			else
				user.setUserOptionGroup("Y");
	       
	       //비밀번호 암호화처리
	       //일반 가입자일 경우 패스워드encoding
	       String encPassword = passwordEncoder.encode(user.getUserPassword());
	       user.setUserPassword(encPassword);
	       
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
