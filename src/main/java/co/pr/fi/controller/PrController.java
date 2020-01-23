package co.pr.fi.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.PrBoard;
import co.pr.fi.service.PrService;

@Controller
public class PrController {
	@Autowired
	PrService prService;
	
	/*
	@RequestMapping(value="/prboard")
	public String prBoard() {
		return "/prboard";
	}
	*/
	
	@GetMapping(value="/prwrite")
	public String prWrite() {
		return "/prwrite";
	}
	
	
	
	//글 목록 보기
	@RequestMapping(value = "/prboard")
	   public ModelAndView boardlist(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
	         ModelAndView model) {

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
	      model.setViewName("prboard");
	      model.addObject("page", page);
	      model.addObject("maxpage", maxpage);
	      model.addObject("startpage", startpage);
	      model.addObject("endpage", endpage);
	      model.addObject("limit", limit);
	      model.addObject("boardlist", list);
	      model.addObject("listcount", listcount);
	      return model;
	   }

	
	//글 쓰기 
	@PostMapping("/boardwrite")
	public String PrWrite(PrBoard prboard, HttpServletRequest request)
	             throws Exception{
		
		prService.insertBoard(prboard); //저장메서드 호출
		
		return "/prboard";
	}

	
    /*
	//글 수정
	@GetMapping("/BoardModifyView.bo")
	public ModelAndView BoardModifyView(int num, ModelAndView mv,
			HttpServletRequest request) throws Exception {
		
		PrBoard boarddata = prService.getDetail(num);
		//글 내용 불러오기 실패한 경우
		if(boarddata == null) {
			System.out.println("수정 상세보기 실패");
			mv.setViewName("error/error");
			mv.addObject("url", request.getRequestURL());
			mv.addObject("message", "수정 상세보기 실패입니다.");
		}
			System.out.println("수정 상세보기 성공");
				
			//수정 폼 페이지로 이동할 때 원문 글 내용을 보여주기 때문에 boarddata 객체를
			//ModelAndView 객체에 저장한다.
			mv.addObject("boarddata", boarddata);
			
			//글 수정 폼 페이지로 이동하기 위해 경로를 설정한다.
			mv.setViewName("board/qna_board_modify");
		return mv;
	}
	
	//글 수정
		@PostMapping("/BoardModifyAction.bo")
		public ModelAndView BoardModifyAction(PrBoard board, String before_file, 
				ModelAndView mv, HttpServletRequest request, 
				HttpServletResponse response) throws Exception{
			boolean usercheck = 
					prService.isBoardWriter(board.getBOARD_NUM(), board.getBOARD_PASS());
			
			//비밀번호가 다른 경우
			if(usercheck == false) {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('비밀번호가 다르다.');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
				return null;
			}
			
			MultipartFile uploadfile = board.getUploadfile();
			
			//1.
			//String saveFolder = request.getSession().getServletContext().getRealPath("resources") +"/upload/";
			
				if(uploadfile!=null && !uploadfile.isEmpty()) { //파일 변경한 경우
					System.out.println("파일 변경한 경우");
					String fileName = uploadfile.getOriginalFilename(); //원래 파일 이름
					board.setBOARD_ORIGINAL(fileName);
					
					String fileDBName = fileDBName(fileName, saveFolder);
					
					//transferTo(File path) : 업로드한 파일의 매개변수의 경로에 저장한다.
					uploadfile.transferTo(new File(saveFolder+fileDBName));
					
					//바뀐 파일명으로 저장
					board.setBOARD_FILE(fileDBName);
				}
			
			//DAO에서수정 메서드 호출하여 수정한다
			int result = prService.boardModify(board);
			
			//수정에 실패한 경우
			if(result == 0) {
				System.out.println("게시판 수정 실패");
				mv.setViewName("error/error");
				mv.addObject("url", request.getRequestURL());
				mv.addObject("message", "게시판 수정 실패");
			}else { //수정 성공의 경우
				System.out.println("게시판 수정 완료");
				
				//추가
				//수정 전에 파일이 있고 새로운 파일을 선택한 경우는 삭제할 목록을 테이블에 추가한다.
				if(!before_file.equals("") &&
				       !before_file.equals(board.getBOARD_FILE())) {
				    	   prService.insert_deleteFile(before_file);
				       }
				
				String url =
						"redirect:BoardDetailAction.bo?num=" + board.getBOARD_NUM();
				
				//수정한 글 내용을 보여주기 위해 글 내용 보기 보기페이지로 이동하기 위해 경로를 설정한다
				mv.setViewName(url);
			}
			return mv;
		
		}
		

		
     private String fileDBName(String fileName, String saveFolder) {
    	 //새로운 폴더 이름 : 오늘 년 + 월 + 일
    	 Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);
			int month = c.get(Calendar.MONTH)+1;
			int date = c.get(Calendar.DATE);
			
			String homedir = saveFolder + year + "-" + month + "-" +date;
			System.out.println(homedir);
			File path1 = new File(homedir);
			if(!(path1.exists())) {
				path1.mkdir(); //새로운 폴더 생성
			}
			
			//난수를 구한다
			Random r = new Random();
			int random = r.nextInt(100000000);
			
			//확장자 구하기 시작
			int index = fileName.lastIndexOf(".");
			//문자열에서 특정 문자열의 위치 값(index)를 반환한다.
			//indexOf가 처음 발견되는 문자열에 대한 index를 반환하는 반면,
			//lastIndexOf는 마지막으로 발견되는 문자열의 index를 반환한다.
			//(파일면에 점이 여러개 있을 경우 맨 마지막에 발견되는 문자열의 위치를 리턴한다.)
			System.out.println("index=" +index);
			String fileExtension = fileName.substring(index + 1);
			System.out.println("fileExtension = "+ fileExtension);
			//확장자 구하기 끝 
			
			//새로운 파일 명
			String refileName = "bbs" + year + month + date + random + "." 
					                   + fileExtension;
			System.out.println("refileName="+refileName);
			
			//오라클 디비에 저장될 파일명
			String fileDBName = "/" + year + "-" + month + "-" + date + "/"
					              + refileName;
			System.out.println("fileDBName="+fileDBName);
			return fileDBName;
		}
     
     @PostMapping("BoardDeleteAction.bo")
     public String BoardDeleteAction(String BOARD_PASS, int num,
    		                   HttpServletResponse response) throws Exception {
    	 //글 삭제 명령을 요청한 사용자가 글을 작성한 사용자인지 판단하기 위해
    	 //입력한 비밀번호와 저장된 비밀번호를 비교하여 일치하면 삭제한다.
    	 boolean usercheck = prService.isBoardWriter(num, BOARD_PASS);
    	 
    	 //비밀번호 일치하지 않는 경우
    	 if(usercheck == false) {
    		 response.setContentType("text/html;charset=utf-8");
    		 PrintWriter out = response.getWriter();
    		 out.println("<script>");
    		 out.println("alert('비밀번호가 다릅니다.');");
    		 out.println("history.back();");
    		 out.println("</script>");
    		 out.close();
    		 return null;
    	 }
    	 //비밀번호 일치하는 경우 삭제한다
    	 int result = prService.boardDelete(num);
    	 
    	 //삭제 실패한 경우
    	 if(result == 0) {
    		 System.out.println("게시판 삭제 실패");
    	 }
    	 
    	 //삭제 성공한 경우 - 글 목록 보기 요청을 전송하는 부분
    	 System.out.println("게시판 삭제 성공");
    	 response.setContentType("text/html;charset=utf-8");
    	 PrintWriter out = response.getWriter();
    	 out.println("<script>");
		 out.println("alert('삭제 되었습니다.');");
		 out.println("location.href='BoardList.bo';");
		 out.println("</script>");
		 out.close();
		 return null;
    	 
     }
     */
}
