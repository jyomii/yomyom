package co.pr.fi.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GGroupMember;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.RequestCategory;
import co.pr.fi.service.CategoryService;
import co.pr.fi.service.GroupMasterService;
import co.pr.fi.service.MemberService;

@Controller
public class GroupMasterController {
	@Autowired
	GroupMasterService groupMasterService;

	@Autowired
	MemberService memberService;

	@Autowired
	CategoryService categoryService;

	// 새로운 모임 생성
	@PostMapping("/insertGroup")
	public void insertGroup(GGroup group, @RequestParam(value = "files") MultipartFile[] files, HttpSession session,
			HttpServletResponse resp) throws IllegalStateException, IOException {

		String filePath = "C:/groupin"; // 파일 저장 경로, 설정파일로 따로 관리한다.

		File dir = new File(filePath); // 파일 저장 경로 확인, 없으면 만든다.
		if (!dir.exists()) {
			dir.mkdirs();
		}

		for (int i = 0; i < files.length; i++) {

			MultipartFile uploadfile = files[i];

			if (!uploadfile.isEmpty()) {

				String fileName = uploadfile.getOriginalFilename(); // 원래 파일 명

				if (i == 0)
					group.setGroupIdOrigin(fileName); // 대표사진 저장
				else
					group.setGroupCOrigin(fileName); // 커버사진 저장

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
				String refileName = "group" + year + month + date + random + "." + fileExtension;

				System.out.println("refileName = " + refileName);

				// 오라클 디비에 저장될 파일명
				String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
				System.out.println("fileDbName = " + fileDBName);

				// transferTo(File path) : 업로한 파일의 매개변수의 경로에 저장합니다.
				uploadfile.transferTo(new File(saveFolder + fileDBName));

				// 바뀐 파일명으로 저장
				if (i == 0)
					group.setGroupDFile(fileDBName); // 대표사진 저장
				else
					group.setGroupCFile(fileDBName);
			}

		}
		System.out.println(group);

		GUsers user = memberService.getUsers((String) session.getAttribute("id"));
		group.setUserKey(user.getUserKey());

		if (group.getGroupPrivate() == null)
			group.setGroupPrivate("N");
		else
			group.setGroupPrivate("Y");

		// 원데이 클래스 여부
		if (group.getGroupType() == null) {
			group.setGroupType("N");
			group.setGroupstatus(1);
		} else {
			// 원데이 클래스일 경우 관리자에게 승인을 받아야함
			group.setGroupstatus(0);
			group.setGroupType("Y");

		}

		
		int result = groupMasterService.insertGroup(group);
		
		
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<script>");
		if (group.getGroupKey() > 0) {
			
			 
			

			 
			 
			 GGroupMember member = new GGroupMember();
			 member.setGroupKey(group.getGroupKey());
			 member.setUserKey(user.getUserKey());
			 member.setGroupNickname("모임장");
			 member.setUserGrade(1);
			 //일반: 0 // 모임장: 1 // 모임가입예정 : -1
			 
			 
			groupMasterService.insertGroupMember(member);
			
			if (group.getGroupstatus() == 1)
				out.print("alert('그룹이 생성되었습니다.');");
			else
				out.print("alert('원데이 클래스 모임은 관리자의 승인 후 모임이 생성됩니다.');");

			out.print("location.href='groupCreate';");
		} else {
			out.print("alert('그룹 생성에 실패했습니다.');history.back();");
		}
		out.print("</script>");
		out.close();

	}

	// 새로운 모임 이름 체크
	@ResponseBody
	@PostMapping("/checkGroupName")
	public int checkGroupName(String name) {

		return groupMasterService.checkGroupName(name);

	}

	// 모임 생성 시 카테고리 요청
	@ResponseBody
	@RequestMapping("/UserRequestCategory")
	public int UserRequestCategory(@RequestParam(value = "dname", required = false) String dname,
			@RequestParam(value = "sname", required = false) String sname, HttpSession session) throws IOException {

		GUsers user = memberService.getUsers((String) session.getAttribute("id"));
		int result = 0;
		if (sname.length() <= 1) {
			sname = null;
		}

		// 해당 대분류 카테고리가 있을 경우 ex) 대분류 : 게임, 소분류 : null
		if (categoryService.isDCategory(dname) >= 1 && sname == null) {
			// 이미 존재하는 대분류 카테고리
			result = 2;

		}

		if (categoryService.isCategory(sname, dname) >= 1) {
			// 이미 존재하는 대, 소분류 카테고리
			result = 2;
		}

		if (result == 0) {

			RequestCategory request = new RequestCategory();

			request.setUserkey(user.getUserKey());
			request.setSname(sname);
			request.setDname(dname);

			// 이미 요청했는지 확인
			if (categoryService.alreadyRequestCategory(request) == 0)
				result = categoryService.UserRequestCategory(request);
			else
				result = 0;

		}

		return result;
	}

	// 그룹 생성 페이지 이동
	@GetMapping("/groupCreate")
	public ModelAndView groupCreate(ModelAndView mv) {

		List<GCategory> dcategory = categoryService.getDCategory();
		List<GCategory2> scategory = categoryService.getSCategory();

		mv.addObject("dcategory", dcategory);
		mv.addObject("scategory", scategory);

		mv.setViewName("group_create");
		return mv;

	}
}
