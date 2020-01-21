package co.pr.fi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.pr.fi.service.GroupPlaceService;

@Controller
public class GroupPlaceController {

	@Autowired
	GroupPlaceService groupPlaceService;
	
}
