package com.es.masjid.alhuda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.es.masjid.alhuda.service.MasjidService;

@Controller
public class MediaController {
	
	@Autowired
	private MasjidService masjidService;	
	
	@RequestMapping(value={"/audio1"}, method=RequestMethod.GET)
	public ModelAndView audio() {
		return new ModelAndView("audioTile");
	}
	
	@RequestMapping(value={"/audio"}, method=RequestMethod.GET)
	public ModelAndView getMedia(@RequestParam String itemType, @RequestParam String page, @RequestParam String size) {		
		
		ModelAndView mv = new ModelAndView("audioTile");
		mv.addObject("mediaItems", masjidService.getItemsPageable(itemType, page, size));
		
		return mv;
	}	
	
	

}
