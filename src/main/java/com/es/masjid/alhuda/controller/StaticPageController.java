package com.es.masjid.alhuda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StaticPageController {

	@RequestMapping(value={"/sundayschoolfaculty"}, method=RequestMethod.GET)
	public ModelAndView sundaySchoolFaculty() {
		return new ModelAndView("sundayschoolfaculty");
	}		
	
	@RequestMapping(value={"/board"}, method=RequestMethod.GET)
	public ModelAndView board() {
		return new ModelAndView("board");
	}		
	
}
