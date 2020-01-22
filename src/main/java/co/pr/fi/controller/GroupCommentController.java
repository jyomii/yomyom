package co.pr.fi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import co.pr.fi.service.GroupCommentService;

@Controller
public class GroupCommentController {

	@Autowired
	GroupCommentService groupCommentService;
	
	// # 댓글 달기
	@PostMapping("commentReply")
	public String commentReply() {
		// int result = groupCommentService.commentReply();
		return "";
	}
}
