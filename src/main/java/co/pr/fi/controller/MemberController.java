package co.pr.fi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GCategory;
import co.pr.fi.domain.GCategory2;
import co.pr.fi.domain.GUsers;
import co.pr.fi.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@GetMapping("/login")
	public ModelAndView login(ModelAndView m) {

		List<GCategory> dcategory = memberService.getDCategory();
		List<GCategory2> scategory = memberService.getSCategory();

		m.setViewName("landing");
		m.addObject("dcategory", dcategory);
		m.addObject("scategory", scategory);

		return m;
	}

	@ResponseBody
	@PostMapping("/joinProcess")
	public int joinProcess(String id, String password, String email, String gender, String age, String location,
			@RequestParam(value = "categorykey[]") List<Integer> categorykey) {

		String encPassword = passwordEncoder.encode(password);
		System.out.println("encPassword:" + encPassword);
		System.out.println("encPassword:" + encPassword);

		// 객체 생성
		GUsers guser = new GUsers();
		guser.setUserId(id);
		guser.setUserPassword(encPassword);
		guser.setUserEmail(email);
		guser.setGender(gender);
		guser.setUserAge(Integer.valueOf(age) / 10); // 나이대 1,2,3,4,5,6 ..
		guser.setUserLocation(Integer.valueOf(location));

		// 회원가입
		int result = memberService.joinUser(guser);
		System.out.println("result : " + result);
		// 관심사 추가
		if (result == 1) {
			// insert all
			Map<String, Object> usercategory = new HashMap<String, Object>();
			usercategory.put("id", id);
			usercategory.put("list", categorykey);
			int category = memberService.insertUserCategory(usercategory);

			if (category > 0) {
				return 1;
			}
		}

		return 0;
	}

	@ResponseBody
	@PostMapping("/idcheck")
	public int idcheck(String id) {

		return memberService.idCheck(id);

	}

	@ResponseBody
	@GetMapping("/passwordsearch")
	public int passwordSearch(String id, String email) throws IOException {

		// 임시 비밀번호 난수 생성 10글자 영,한글,숫자
		String password = "";
		Random ran = new Random();

		for (int i = 0; i < 10; i++) {
			if (ran.nextBoolean())
				password = password + (char) ((int) (ran.nextInt(26)) + 97);
			else
				password = password + ((int) (ran.nextInt(10)));

		}

		System.out.println("생성된 난수 : " + password);
		String encPassword = passwordEncoder.encode(password);

		int update = memberService.updatePassword(id, encPassword);

		System.out.println("update : " + update);
		
		//이메일로 이 비밀번호 전송..ㅠㅠ내일 하자!
		
		
		return update;
	}

	@PostMapping("/loginprocess")
	public ModelAndView loginProcess(String id, String password, ModelAndView mv, HttpSession session,
			HttpServletResponse res) throws IOException {

		// 해당 id 객체 가져오기
		GUsers user = memberService.getUsers(id);
		System.out.println("password : " + user.getUserPassword());
		if (passwordEncoder.matches(password, user.getUserPassword())) {

			session.setAttribute("id", id);

			mv.setViewName("home");

		} else {
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out = res.getWriter();
			out.println("<script>alert('아이디 또는 비밀번호를 확인하세요.');history.back();</script>");
			out.close();

			return null;
		}

		return mv;
	}
}
