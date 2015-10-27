package com.es.masjid.alhuda.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

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
	
//	@RequestMapping(value={"main"}, method=RequestMethod.GET)
//	public ModelAndView index() {
//		
//		ModelAndView mv = new ModelAndView("main");
//		
//		DailyScheduleBean bean = masjidService.getTodaySchedule();
//		mv.addObject("dailySchedule", bean);
//		
//		return mv;
//	}	
	
	@RequestMapping(value={"/", "home"}, method=RequestMethod.GET)
	public ModelAndView home() {		
		
		ModelAndView mv = new ModelAndView("homeTile");
		
		DailyScheduleBean bean = masjidService.getTodaySchedule();
		
        SimpleDateFormat sdf = new SimpleDateFormat("M/d/yyyy");
        Date today = new Date();
       // Date todayWithZeroTime =sdf.parse(sdf.format(today));
        mv.addObject("dailySchedule", bean);
		mv.addObject("prayerTimesData", masjidService.getPrayerTimesAsString(sdf.format(today), sdf.format(today)));
		mv.addObject("newsItems", masjidService.getItems("NEWS"));
		mv.addObject("events", masjidService.getItems("EVENT"));
		mv.addObject("adslist", masjidService.getItems("ADS"));
		
		return mv;
	}	
	
	

}
