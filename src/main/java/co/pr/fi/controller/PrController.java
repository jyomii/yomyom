package co.pr.fi.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.PrBoard;
import co.pr.fi.service.PrService;

@Controller
public class PrController {
	@Autowired
	PrService prService;
	
	
	
	//글쓰기
	@GetMapping("/prwrite")
	public ModelAndView PrWrite(PrBoard prboard, HttpSession session,
			HttpServletRequest request, ModelAndView mv) throws Exception{
		String id = (String)session.getAttribute("id");
	    List<GGroup> group = prService.userinfo(id);
	    //System.out.println("!!!!!!!!!!!!!"+group.get(0).getGroupName());
	    
	    mv.setViewName("prboard/prwrite");
	    mv.addObject("list", group); 
		
		return mv;
	}
	
	//글 쓰기처리
    @RequestMapping(value="/prAdd", method= RequestMethod.POST)
    public String prwrite_add(PrBoard prboard,  HttpSession session, HttpServletRequest request) throws Exception{
    	prService.insertBoard(prboard);
    	return "redirect:prboard";
    	
    }
	
	//글 목록 보기
		@RequestMapping(value = "prboard")
		   public ModelAndView boardlist(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
				   HttpSession session, PrBoard prboard, ModelAndView model) {

			String id = (String)session.getAttribute("id");
			List<PrBoard> writeuser = prService.writeUser(id);
		
			
		      int limit = 10; // 한 화면에 보여줄 갯수

		      // 총 리스트 수를 받아옵니다.
		      int listcount = prService.getListCount(); // 총 리스트 수

		      int maxpage = (listcount + limit - 1) / limit;
		      System.out.println("총 페이지수 : " + maxpage);

		      int startpage = ((page - 1) / 10) * 10 + 1;
		      System.out.println("현재 페이지에 보여줄 시작 페이지 수 = " + startpage);

		      int endpage = startpage + 10 - 1;
		      System.out.println("현재 페이지에 보여줄 마지막 페이지 수 =" + endpage);

		      if (endpage > maxpage)
		         endpage = maxpage;

		      List<PrBoard> list = prService.getBoardList(page, limit);
		      System.out.println("page =" + page);
		      System.out.println("limit =" + limit);
		      System.out.println("$$$$$$$$$$"+ list.get(0).getGroupDFile());
		     
		      
		      model.setViewName("prboard/prboard");
		      model.addObject("page", page);
		      model.addObject("maxpage", maxpage);
		      model.addObject("startpage", startpage);
		      model.addObject("endpage", endpage);
		      model.addObject("limit", limit);
		      model.addObject("boardlist", list);
		      model.addObject("listcount", listcount);
		      model.addObject("writeuser", writeuser);
		      return model;
		   }
	
		
	

    
	//글 수정
	@GetMapping(value= "/prModifyView")
	public ModelAndView PrModifyView(int prKey, ModelAndView mv,
			HttpServletRequest request) throws Exception {
		
		PrBoard boarddata = prService.getDetail(prKey);
		//글 내용 불러오기 실패한 경우
		if(boarddata == null) {
			System.out.println("수정 상세보기 실패");
			mv.addObject("message", "수정 상세보기 실패입니다.");
		}
			System.out.println("수정 상세보기 성공");
			
			mv.addObject("boarddata", boarddata);
			
			//글 수정 폼 페이지로 이동하기 위해 경로를 설정한다.
			mv.setViewName("prboard/prmodify");
		return mv;
	}
	
	//글 수정
		@PostMapping(value = "/prModifyAction")
		public ModelAndView PrModifyAction(PrBoard prboard, int userkey, 
				ModelAndView mv, HttpServletRequest request, 
				HttpServletResponse response) throws Exception{
			boolean usercheck = 
					prService.isBoardWriter(prboard.getUserKey());
			
			//유저키가 다른 경우
			if(usercheck == false) {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('글쓴이가 아닙니다. 수정불가');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
				return null;
			}
		
			//DAO에서수정 메서드 호출하여 수정한다
			int result = prService.boardModify(prboard);
			
			//수정에 실패한 경우
			if(result == 0) {
				System.out.println("수정 실패");
				mv.addObject("message", "수정 실패");
			}else { //수정 성공의 경우
				System.out.println("수정 완료");
			
				mv.setViewName("prboard/prboard");
			}
			return mv;
		
		}

	
     @PostMapping("BoardDeleteAction")
     public String BoardDeleteAction(int userKey,  HttpServletResponse response) throws Exception {
     
    	 //글쓴이 맞는지 유저키로 확인
    	 boolean usercheck = prService.isBoardWriter(userKey);
    	 
    	 //유저키 일치하지 않는 경우
    	 if(usercheck == false) {
    		 response.setContentType("text/html;charset=utf-8");
    		 PrintWriter out = response.getWriter();
    		 out.println("<script>");
    		 out.println("alert('글쓴이가 아닙니다. 삭제불가');");
    		 out.println("history.back();");
    		 out.println("</script>");
    		 out.close();
    		 return null;
    	 }
    	 //일치하는 경우 삭제
    	 int result = prService.boardDelete(userKey);
    	 
    	 //삭제 실패한 경우
    	 if(result == 0) {
    		 System.out.println("삭제 실패");
    	 }
    	 
    	 //삭제 성공한 경우 - 글 목록 보기 요청을 전송하는 부분
    	 System.out.println("삭제 성공");
    	 response.setContentType("text/html;charset=utf-8");
    	 PrintWriter out = response.getWriter();
    	 out.println("<script>");
		 out.println("alert('삭제 되었습니다.');");
		 out.println("location.href='prboard';");
		 out.println("</script>");
		 out.close();
		 return null;
    	 
     }
     
}
