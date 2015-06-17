package com.es.masjid.alhuda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EventsController {
	
	@RequestMapping(value={"/events"}, method=RequestMethod.GET)
	public ModelAndView showEvents() {
		return new ModelAndView("calendarTile");
	}		
	
	@RequestMapping(value={"/events/{eventId}"}, method=RequestMethod.GET)
	public ModelAndView showEvent() {
		return new ModelAndView("eventTile");
	}		

}
