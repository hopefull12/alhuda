package com.es.masjid.alhuda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.es.masjid.alhuda.service.MasjidService;

@Controller
public class ContactUsController {

	@Autowired
	private MasjidService masjidService;
	
	@RequestMapping(value={"/contactus"}, method=RequestMethod.GET)
	public ModelAndView displayContactForm() {
		
		ModelAndView mv = new ModelAndView("contactTile");
		return mv;
	}	
	
	@RequestMapping(value={"/contactus"}, method=RequestMethod.POST)
	public ModelAndView sendEmail(@RequestParam(value="senderEmail", required=false) String senderEmail,
            @RequestParam(value="senderName", required=false) String senderName,
            @RequestParam(value="senderPhone", required=false) String senderPhone,
            @RequestParam(value="emailSubject", required=false) String emailSubject,
            @RequestParam(value="emailBody", required=false) String emailBody) {
		
		String result = masjidService.sendEmail(senderEmail, senderName, senderPhone, emailSubject, emailBody);
		
		ModelAndView mv = new ModelAndView("contactUsAjaxTile");
		return mv;
	}		
	
	
}
