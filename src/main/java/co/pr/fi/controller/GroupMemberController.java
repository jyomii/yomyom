package co.pr.fi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import co.pr.fi.service.GroupMemberService;

@Controller
public class GroupMemberController {

	@Autowired
	GroupMemberService groupMemberService;
}