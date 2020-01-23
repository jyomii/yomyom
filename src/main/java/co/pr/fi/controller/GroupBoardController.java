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
		List<Post> list = new ArrayList<Post>();
		
		list = groupBoardService.detailBoard(postkey);	
		
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
