package co.pr.fi.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.JoinAnswer;
import co.pr.fi.domain.JoinQuest;
import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupMemberService;

@Controller
public class GroupMemberController {

	@Autowired
	GroupMemberService groupMemberService;
	
	// 모임 메인 페이지 이동
	@GetMapping("/groupmain")
	public String groupmain (@RequestParam(defaultValue = "0") int groupKey, Model m) {
		// 모임 회원 상세 정보 페이지 -> 가입한 모임 -> 해당 모임 메인 페이지로 이동할 수 있게 코드 추가해야댐 
		// 유저키 임시
		m.addAttribute("userKey", 2);
		return "groupin_group_main";
	}
	
	// 모임 가입 페이지 이동  
	@GetMapping("/signGroup")
	public ModelAndView signGroup (ModelAndView mv) {
		System.out.println("모임 가입 페이지 이동");
		// 모임의 가입 양식을 가져온다.
		int groupKey = 3;
		int userKey = 7;
		
		List<JoinQuest> list = groupMemberService.getJoinSample(groupKey);
		System.out.println("###################" + list.get(0).getQuest3());
		mv.addObject("quest1", list.get(0).getQuest1());
		mv.addObject("quest2", list.get(0).getQuest2());
		mv.addObject("quest3", list.get(0).getQuest3());
		mv.addObject("quest4", list.get(0).getQuest4());
		mv.addObject("quest5", list.get(0).getQuest5());
		mv.addObject("introduce", list.get(0).getIntroduce());
		mv.addObject("groupKey", groupKey);
		mv.addObject("userKey", userKey);
		mv.setViewName("G_signup");
		
		/* ########### 모임키, 유저키 받아서 이미 현재 모임에 유저가 가입한 경우엔 이미 가입한 모임이라 띄우고 다른 데로 이동 ########## */
		return mv;
	}
	
	// 모임 가입하기
	@PostMapping("/joinGroupAction")
	public String joinGroupAction(GGroupMember mem, JoinAnswer answer) throws IOException {
		String filePath = "C:/groupin";	// 파일 저장 경로
		
		File dir = new File(filePath);	// 파일 저장 경로 확인
		if (!dir.exists()) {	// 존재하지 않을 시 폴더 생성
			dir.mkdirs();
		}
		
		MultipartFile uploadfile = mem.getUploadfile();
		
		if (!uploadfile.isEmpty()) {	// 유저가 프사 등록을 했을 때
			String fileName = uploadfile.getOriginalFilename();	// 유저가 올린 파일의 찐 이름 가져온다.
			mem.setProfileOrigin(fileName);
			
			// 새로운 폴더 이름 : 오늘 년-월-일
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR); // 오늘 년도 구한다.
			int month = c.get(Calendar.MONTH) + 1; // 오늘 월 구한다.
			int date = c.get(Calendar.DATE); // 오늘 일 구한다.
			
			// 이클립스 관리 경로
			String saveFolder = filePath + "/";								// C:/groupin/
			String homedir = saveFolder + year + "-" + month + "-" + date;	// C:/groupin/2020-01-27
			
			File path1 = new File(homedir);
			if (!(path1.exists())) {
				path1.mkdir();		// 새로운 폴더 생성
			}

			// 난수를 구한다.
			Random r = new Random();
			int random = r.nextInt(100000000);

			/**** 확장자 구하기 시작 ****/
			int index = fileName.lastIndexOf(".");

			String fileExtension = fileName.substring(index + 1);
			
			// 새로운 파일명
			String refileName = "group" + year + month + date + random + "." + fileExtension;

			// 오라클 디비에 저장될 파일명
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			
			// transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장한다.
			uploadfile.transferTo(new File(saveFolder + fileDBName));

			// 바뀐 파일명으로 저장
			mem.setProfileFile(fileDBName);
		} // if end
		
		// 추가해야댐 @@@@@@@@@@@@@@@@@@@@@@@
		
		// 가입한 회원의 기본 정보
		int result = groupMemberService.joinGroup(mem);
		
		// 가입한 회원의 가입양식 작성 리스트 
		int result2 = groupMemberService.setJoinSample(answer);
		
		return "groupin_group_main";
	}
	
	// 모임 추천 페이지 이동
	@GetMapping("/recommendG")
	public String recommendGroup () {
		return "G_recommendGroup";
	}
	
	// 모임 회원 상세 페이지 이동
	@GetMapping("/G_mem_detail")
	public ModelAndView GmemDetail (@RequestParam(required = false, defaultValue = "0") int userKey, 
									HttpServletResponse response, 
									ModelAndView mv) throws IOException {
		System.out.println("### 모임 회원 상세정보 GET ###");
		
		if (userKey == 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('죄송합니다.\\n해당 회원의 정보를 볼 수 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		List<GGroup> list = new ArrayList<GGroup>();
		list = groupMemberService.userInGroup(userKey);
		
		mv.addObject("list", list);
		mv.addObject("userKey", userKey);
		String groupKey = "3"; // 임시로 그룹키값 지정
		mv.addObject("groupKey", groupKey);
		mv.setViewName("G_mem_detail");
		return mv;
	}
	
	// 모임 회원 상세 정보 -- ajax
	@ResponseBody
	@PostMapping("/G_mem_details")
	public Object memDetail (String userKey, String groupKey, @RequestParam(defaultValue = "3") int menu) {
		System.out.println("### 모임 회원 상세정보 POST ###");
		
		Map<String, Object> result = new HashMap<String, Object>();
		Map<String, Object> temp = new HashMap<String, Object>();
		List<GGroup> groupList = new ArrayList<GGroup>();
		List<Post> postList = new ArrayList<Post>();
		
		switch (menu) {
		case 0 : case 3 :
			// 가입한 모임
			groupList = groupMemberService.userInGroup(Integer.parseInt(userKey));
			
			result.put("list", groupList);
			result.put("menu", menu);
			break;
		case 1 :
			// 작성한 글
			temp.put("userKey", userKey);
			temp.put("groupKey", groupKey);
			
			postList = groupMemberService.wroteInGroup(temp);
			
			result.put("list", postList);
			result.put("menu", menu);
			break;
		case 2 : 
			// 작성한 댓글
			temp.put("userKey", userKey);
			temp.put("groupKey", groupKey);
			
			postList = groupMemberService.postByCommented(temp);
			
			result.put("list", postList);
			result.put("menu", menu);
			break;
		}
		return result;
	}
	
	// 닉네임 중복체크 -- ajax
	@ResponseBody
	@PostMapping("/groupNickCheck")
	public String nickCheck (String nickname, String groupKey) {
		System.out.println("### 닉네임 체크 ### " + nickname);
		
		Map<String, String> check = new HashMap<String, String>();
		check.put("nickname", nickname);
		check.put("groupKey", groupKey);
		int result = groupMemberService.nickCheck(check);
		return Integer.toString(result);
	}
}
