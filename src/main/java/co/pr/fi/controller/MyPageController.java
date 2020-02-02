package co.pr.fi.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.GUserCategory;
import co.pr.fi.domain.GUsers;
import co.pr.fi.service.MemberService;
import co.pr.fi.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	MyPageService myPageService;
	

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
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
	  
	  
	    //사진등록
		@PostMapping("/insertPic")
		public String insertPic(GUsers user, @RequestParam(value = "userKey") int userKey,  HttpSession session,
				HttpServletResponse resp) throws IllegalStateException, IOException {

			String filePath = "C:/groupin"; // 파일 저장 경로, 설정파일로 따로 관리한다.

			File dir = new File(filePath); // 파일 저장 경로 확인, 없으면 만든다.
			if (!dir.exists()) {
				dir.mkdirs();
			}

			MultipartFile uploadfile = user.getUserImgInsert();

				if (!uploadfile.isEmpty()) {

					String fileName = uploadfile.getOriginalFilename(); // 원래 파일 명

					
						user.setUserImageOrigin(fileName); // 대표사진 저장
					
					// 새로운 폴더 이름 : 오늘 년, 월, 일
					Calendar c = Calendar.getInstance();
					int year = c.get(Calendar.YEAR);
					int month = c.get(Calendar.MONTH) + 1;
					int date = c.get(Calendar.DATE);

					// 이 경로에 파일을 저장할거임
					// 이클립스가 관리하는 경로
					String saveFolder = filePath + "/";

					String homedir = saveFolder + year + "-" + month + "-" + date;

					System.out.println(homedir);

					File path1 = new File(homedir);
					if (!(path1.exists())) { // 이 파일의 경로가 존재하는지 확인
						path1.mkdir(); // 없을 경우 경로 만들기
					}

					// 난수를 구합니다. 사용자가 올린 파일의 이름이 중복되면 안되니까
					Random r = new Random();
					int random = r.nextInt(100000000);

					/* 확장자 구하기 시작 //// 원래 파일의 형식이 .png / .jpg / 같은 형식일거니까 */
					int index = fileName.lastIndexOf(".");
					/*
					 * 문자열에서 특정 문자열의 위치 값을 반환한다. indexOf가 처음 발견되는 문자열에 대한 index를 반환하는 반면,
					 * lastIndexOf는 마지막으로 발견되는 문자열의 index를 반환합니다. (파일명에 점이 여러개 있을 경우 맨 마지막에 발견되는
					 * 문자열의 위치를 리턴합니다.)
					 */

					/*
					 * 문자열에서 특정 문자열의 위치 값을 반환한다. indexOf가 처음 발견되는 문자열에 대한 index를 반환하는 반면, lastIndex는
					 * 마지막으로 발견되는 문자열ㅇ릐 index를 반환함
					 */

					System.out.println("index = " + index);

					String fileExtension = fileName.substring(index + 1); // 확장자만 따로 뻄
					System.out.println("fileExtension = " + fileExtension);
					/* 확장자 구하기 끝 */
						
					// 새로운 파일명
					String refileName = "user" + year + month + date + random + "." + fileExtension;

					System.out.println("refileName = " + refileName);

					// 오라클 디비에 저장될 파일명
					String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
					System.out.println("fileDbName = " + fileDBName);

					// transferTo(File path) : 업로드한 파일의 매개변수의 경로에 저장합니다.
					uploadfile.transferTo(new File(saveFolder + fileDBName));

					// 바뀐 파일명으로 저장
					user.setUserImageFile(fileDBName); // 대표사진 저장
					
			}
			System.out.println(user);

		    myPageService.insertPic(user);
		    return "redirect:mypage";
			
		}
	 

		@PostMapping("/userImgUpdate")
		public String userImgUpdate(@RequestParam(value = "userKey") int userKey, GUsers user, HttpServletRequest request)
				throws Exception {
			MultipartFile uploadfile = user.getUserImgUpload();

			if (!uploadfile.isEmpty()) {
				String fileName = uploadfile.getOriginalFilename();
				user.setUserImageOrigin(fileName);
				user.setUserKey(userKey);
				Calendar c = Calendar.getInstance();
				int year = c.get(Calendar.YEAR);
				int month = c.get(Calendar.MONTH) + 1;
				int date = c.get(Calendar.DATE);
				// String saveFolder =
				// request.getSession().getServletContext().getRealPath("resources") +
				// "/upload/";
				String saveFolder = "C:\\groupin/";
				String homedir = saveFolder + year + "-" + month + "-" + date;
				System.out.println("homedir = " + homedir);
				File path1 = new File(homedir);
				if (!(path1.exists())) {
					path1.mkdir();
				}
				Random r = new Random();
				int random = r.nextInt(100000000);

				int index = fileName.lastIndexOf(".");
				
				System.out.println("index = " + index);
				String fileExtension = fileName.substring(index + 1);
				System.out.println("fileExtension = " + fileExtension);

				String refileName = "groupImg" + year + month + date + random + "." + fileExtension;
				System.out.println("refileName = " + refileName);

				String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
				System.out.println("fileDBName = " + fileDBName);

				uploadfile.transferTo(new File(saveFolder + fileDBName));

				user.setUserImageFile(fileDBName);
				System.out.println("!!!!########!!!!!!" + user.getUserImageFile());
			}
			myPageService.userImgUpdate(user);
			return "redirect:mypage";
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
	    
       //수정2
		@RequestMapping(value="/mypage3")
		public ModelAndView update2(HttpSession session, ModelAndView mv) throws Exception {
	    	String id = (String) session.getAttribute("id");
	    	GUserCategory category = myPageService.category(id);
	    	
	    	mv.setViewName("mypage/mypage3");
	    	mv.addObject("category", category);
			return mv;
		}
		
		//수정처리2
		@RequestMapping(value="/mypage3", method = RequestMethod.POST)
		public ModelAndView updateProcess2(HttpSession session,
	            HttpServletResponse response) throws Exception {
	       response.setContentType("text/html;charset=utf-8");
	       PrintWriter out = response.getWriter();
	       String id = (String) session.getAttribute("id");
	       GUserCategory category = myPageService.category(id);
	    	
	    	int result = myPageService.myupdate2(category);
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
