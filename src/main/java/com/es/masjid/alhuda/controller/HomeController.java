package com.es.masjid.alhuda.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.es.masjid.alhuda.service.MasjidService;

@Controller
public class HomeController {
	
	@Autowired
	private MasjidService masjidService;
	
	@RequestMapping(value={"/", "home"}, method=RequestMethod.GET)
	public ModelAndView home() {		
		
		ModelAndView mv = new ModelAndView("homeTile");
		
		Map<String, String> bean = masjidService.getTodaySchedule2();

		//change code such that we are calling server only once for data.
        mv.addObject("dailySchedule", bean);
		mv.addObject("prayerTimesData", masjidService.getPrayerTimesAsString("DAILY"));
		mv.addObject("newsItems", masjidService.getItems("NEWS"));
		mv.addObject("events", masjidService.getItems("EVENT"));
		mv.addObject("adslist", masjidService.getItems("ADS"));
		
		return mv;
	}	
	
	

}
