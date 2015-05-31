package com.es.masjid.alhuda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.es.masjid.alhuda.model.DailyScheduleBean;
import com.es.masjid.alhuda.service.MasjidService;

@Controller
public class HomeController {
	
	@Autowired
	private MasjidService masjidService;
	
	@RequestMapping(value={"/", "main"}, method=RequestMethod.GET)
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView("main");
		
		DailyScheduleBean bean = masjidService.getTodaySchedule();
		mv.addObject("dailySchedule", bean);
		
		return mv;
	}	

}
