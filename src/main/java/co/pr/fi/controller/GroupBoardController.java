package co.pr.fi.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.Post;
import co.pr.fi.service.GroupBoardService;

@Controller
public class GroupBoardController {

	@Autowired
	GroupBoardService groupBoardService;
	
	// 게시글 보기
	@GetMapping("/detailBoard")
	public ModelAndView detailBoard (String postkey, ModelAndView mv) {
		// ## 가져와야 할 List ##
		// 유저 프사(profileFile), 유저 닉네임(groupNickname)															-- GGROUPMEMBER
		// 글제목(POSTTITLE), 글 작성일(POSTDATE), 글내용(POSTCONTENT), 조회수(VIEWCOUNT), 댓글수(REPLYCOUNT), 좋아요수(LIKE)	-- POST
		// 해당 글에 달린 댓글																							-- GCOMMENT
		// userkey, postkey, commentkey
		
		List<Post> list = new ArrayList<Post>();
		
		list = groupBoardService.detailBoard(postkey);	// list = 글키값, 글제목, 글내용, 작성일, 글작성자, 댓글수
		
		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("G_detailBoard");
			return mv;
		}
		
		mv.addObject("죄송합니다. 게시글을 조회할 수 없습니다.", "error");
		mv.setViewName("error");
		return mv;
	}
}
