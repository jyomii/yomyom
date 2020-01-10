package co.pr.fi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
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
	public ModelAndView login(ModelAndView m, HttpServletRequest request) {

		List<GCategory> dcategory = memberService.getDCategory();
		List<GCategory2> scategory = memberService.getSCategory();

		Cookie[] getCookiesCookie = request.getCookies();
		for (Cookie k : getCookiesCookie)
			m.addObject(k.getName(), k.getValue());

		m.addObject("dcategory", dcategory);
		m.addObject("scategory", scategory);
		m.setViewName("landing");
		return m;
	}

	

	// 여기도 트랜잭션 추가
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

	// 여기도 트랜잭션 추가
	@ResponseBody
	@GetMapping("/passwordsearch")
	public int passwordSearch(String id, String email) throws IOException {

		// 해당 아이디, 이메일 정보가 있는지 확인
		int result = memberService.checkIdAndEmail(id, email);

		int value = 0;

		if (result == 1) {
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

			if (update == 1) {
				// 이메일로 이 비밀번호 전송
				try {
					sendMail(email, password);
					// 이메일 보내기 성공
					value = 1;

				} catch (MessagingException e) {
					e.printStackTrace();
					// 이메일 보내기 실패
					value = 2;
				}

			}

		} else {

			// 정보가 없습니다.
			value = 0;
		}

		return value;
	}

	@PostMapping("/loginprocess")
	public String loginProcess(String id, String password,

			@RequestParam(value = "rememberme", required = false) String remember, HttpSession session,
			HttpServletResponse res) throws IOException {

		// 해당 id 객체 가져오기
		GUsers user = memberService.getUsers(id);
		System.out.println("password : " + user.getUserPassword());
		if (passwordEncoder.matches(password, user.getUserPassword())) {

			session.setAttribute("id", id);
			Cookie cookie = new Cookie("saveid", id);

			if (remember != null) {

				cookie.setMaxAge(60 * 60 * 24);

				System.out.println("remember ok ");
			} else {
				cookie.setMaxAge(0);
				System.out.println("remember no ");
			}

			res.addCookie(cookie);

			return "redirect:admin";

		} else {
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out = res.getWriter();
			out.println("<script>alert('아이디 또는 비밀번호를 확인하세요.');history.back();</script>");
			out.close();

			return null;
		}

	}

	private void sendMail(String recipient, String changePassword) throws MessagingException {
		// 네이버일 경우 smtp.naver.com 을 입력합니다.

		// Google일 경우 smtp.gmail.com 을 입력합니다.

		String host = "smtp.naver.com";

		final String username = "plain64"; // 네이버 아이디를 입력해주세요. @nave.com은 입력하지 마시구요.

		final String password = "bae1690!!"; // 네이버 이메일 비밀번호를 입력해주세요.

		int port = 465; // 포트번호

		// 메일 내용

		String subject = "[GroupIn] 변경된 임시 비밀번호를 보내드립니다."; // 메일 제목 입력해주세요.

		String body = "변경된 비밀번호는 [" + changePassword + "] 입니다."; // 메일 내용 입력해주세요.

		Properties props = System.getProperties();

		// 정보를 담기 위한 객체 생성

		// SMTP 서버 정보 설정

		props.put("mail.smtp.host", host);

		props.put("mail.smtp.port", port);

		props.put("mail.smtp.auth", "true");

		props.put("mail.smtp.ssl.enable", "true");

		props.put("mail.smtp.ssl.trust", host);

		// Session 생성

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {

			String un = username;

			String pw = password;

			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {

				return new javax.mail.PasswordAuthentication(un, pw);

			}

		});

		session.setDebug(true); // for debug

		Message mimeMessage = new MimeMessage(session); // MimeMessage 생성

		mimeMessage.setFrom(new InternetAddress("plain64@naver.com")); // 발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀
																		// 주소를
																		// 다 작성해주세요.

		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); // 수신자셋팅

		mimeMessage.setSubject(subject); // 제목셋팅

		mimeMessage.setText(body); // 내용셋팅

		Transport.send(mimeMessage); // javax.mail.Transport.send() 이용

	}
}
