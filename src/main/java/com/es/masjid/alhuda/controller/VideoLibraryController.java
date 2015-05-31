package com.es.masjid.alhuda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class VideoLibraryController {

	@RequestMapping(value={"/videos"}, method=RequestMethod.GET)
	public ModelAndView index() {
		
//		try {
//			EventManager.readCal();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		return new ModelAndView("videolibrary");
	}		
	
}
