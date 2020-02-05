package co.pr.fi.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.pr.fi.domain.GComment;
import co.pr.fi.service.GroupBoardService;
import co.pr.fi.service.GroupCommentService;
import co.pr.fi.service.GroupMemberService;

@Controller
public class GroupCommentController {

	@Autowired
	GroupCommentService groupCommentService;
	
	@Autowired
	GroupMemberService groupMemberService;
	
	@Autowired
	GroupBoardService groupBoardService;
	
	/* status : -1(login 페이지로 이동), 0(댓글 등록 실패), 1(댓글 등록) */
	
	// # 댓글에 답댓 달기
	@ResponseBody
	@PostMapping("commentReply")
	public Object commentReply(@RequestParam(required = false, defaultValue = "-1") int postKey,
							   @RequestParam(required = false, defaultValue = "-1") int groupKey,
							   @RequestParam(required = false, defaultValue = "") String content,
							   @RequestParam(required = false, defaultValue = "-1") int commentnum,
							   @RequestParam(required = false, defaultValue = "0") int commentshow,
							   HttpSession session) {
		System.out.println("***************************************************");
		System.out.println("### 댓글에 답댓 달기 ###");
		System.out.println("postKey = " + postKey + ", groupKey = " + groupKey);
		System.out.println("***************************************************");
		Map<String, Object> data = new HashMap<String, Object>();
		List<GComment> commentList = new ArrayList<GComment>();	// 댓글 관련
		
		int listcount = 0;
		
		if (session.getAttribute("id") == null)
			return data.put("status", -1);
		
		// 현재 로그인한 회원 유저키 구하기
		int userkey = groupMemberService.getUser((String)session.getAttribute("id"));
		
		// commentnum = 답글이 달리는 원댓
		GComment co = groupCommentService.getCommentInfo(commentnum);
		data.put("postkey", postKey);
		data.put("userkey", userkey);
		data.put("groupkey", groupKey);
		data.put("content", content);
		data.put("commentnum", commentnum);
		data.put("commentshow", commentshow);
		
		int result = groupCommentService.commentReply(data, co);
		
		if (result == -1 || result == 0) {
			// 실패 코드 전송
			data.clear();
			data.put("status", -1);
			return data;
		}
		
		listcount = groupCommentService.getCommentCount(data); 		// 현재 게시글에 해당하는 댓글수
		//listcount = groupBoardService.getCommentCount(data); 		// 현재 게시글에 해당하는 댓글수

		int page = 1;
		int limit = 10;
		
		data.put("page", page);
		data.put("limit", limit);
		commentList = groupBoardService.getBoardComment(data);		// 현재 게시글에 해당하는 댓글리스트
		
		data = pagination(page, limit, listcount);
		data.put("comment", commentList);	// 댓글리스트
		data.put("listcount", listcount);	// 댓글 개수
		data.put("page", page);	// 페이지
		data.put("limit", limit);	// 최대 개수
		
		return data;
	}
	
	// # 글에 댓글 달기
	@ResponseBody
	@PostMapping("postReply")
	public Object postReply(@RequestParam(required = false, defaultValue = "-1") int postKey,
							@RequestParam(required = false, defaultValue = "-1") int groupKey,
							@RequestParam(required = false, defaultValue = "") String content,
							@RequestParam(required = false, defaultValue = "0") int commentReLev,
							@RequestParam(required = false, defaultValue = "0") int commentReSeq,
							@RequestParam(required = false, defaultValue = "0") int commentshow,
							HttpSession session) {
		System.out.println("### 글에 댓글 달기 ###");
		System.out.println("postKey = " + postKey + ", groupKey = " + groupKey);
		
		Map<String, Object> data = new HashMap<String, Object>();
		List<GComment> commentList = new ArrayList<GComment>();	// 현재 글에 달린 댓글 리스트
		
		int listcount = 0;
		
		// 로그인 안 된 상태일 때
		if (session.getAttribute("id") == null) {
			data.put("status", -1);	
			return data;
		}
		
		// 현재 로그인한 회원 유저키 구하기
		int userKey = groupMemberService.getUser((String)session.getAttribute("id"));
		
		data.put("postkey", postKey);
		data.put("groupkey", groupKey);
		data.put("userkey", userKey);
		data.put("content", content);
		data.put("commentReLev", commentReLev);
		data.put("commentReSeq", commentReSeq);
		data.put("commentshow", commentshow);
		
		// 글에 댓글 달기 
		int result = groupCommentService.postReply(data);
		if (result != 1) {
			data.put("status", result);
			return data;
		}
		
		listcount = groupBoardService.getCommentCount(data); 		// 현재 게시글에 해당하는 댓글수
		
		int page = 1;
		int limit = 10;
		
		data.put("page", page);
		data.put("limit", limit);
		commentList = groupBoardService.getBoardComment(data);	// 현재 게시글에 해당하는 댓글리스트
		
		// 데이터 리턴
		data = pagination(page, limit, listcount);
		data.put("comment", commentList);	// 댓글리스트
		data.put("listcount", listcount);	// 댓글 개수
		data.put("page", page);	// 페이지
		data.put("limit", limit);	// 최대 개수
		
		return data;
	}
	
	// # 댓글 삭제
	@ResponseBody
	@PostMapping("deleteReply")
	public Object deleteReply (@RequestParam(required = true, defaultValue = "-1") int commentnum,
							   HttpSession session) {
		
		Map<String, Object> keys = new HashMap<String, Object>();
		List<GComment> commentList = new ArrayList<GComment>();	// 현재 글에 달린 댓글 리스트
		int listcount = 0;
		
		int result = groupCommentService.commentDelete(commentnum);
		if (result == 0) {	// 삭제 실패
			keys.put("result", result);
			return keys;
		}
		
		// 여기 keys가 뭘 받는지 체크 ###
		listcount = groupBoardService.getCommentCount(keys); 		// 현재 게시글에 해당하는 댓글수
		
		
		return keys;
	}
	
	// # 댓글 수정
	@ResponseBody
	@PostMapping("updateReply")
	public Object updateReply (@RequestParam(required = false, defaultValue = "-1") int commentnum,
							   @RequestParam(required = false, defaultValue = "-1") String content) {
		Map<String, Object> keys = new HashMap<String, Object>();
		keys.put("commentnum", commentnum);
		keys.put("content", content);

		int result = groupCommentService.update(keys);
		return keys;
	}
	
	public Map<String, Object> pagination (int page, int limit, int listcount) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int maxpage = (listcount + limit - 1) / limit;	// 총 페이지 수
		int startpage = ((page - 1) / 10) * 10 + 1;		// 현재 페이지에 보여줄 시작 페이지 수
		int endpage = startpage + 10 - 1;				// 현재 페이지에 보여줄 마지막 페이지 수
		
		if (endpage > maxpage) endpage = maxpage;
		
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		return map;
	}
}
