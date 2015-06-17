package com.es.masjid.alhuda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.es.masjid.alhuda.service.MasjidService;

@Controller
public class ContactUsController {

	@Autowired
	private MasjidService masjidService;
//    @Autowired
//    private JavaMailSender mailSender;	
	
	@RequestMapping(value={"/contactus"}, method=RequestMethod.GET)
	public ModelAndView displayContactForm() {
		
		ModelAndView mv = new ModelAndView("contactTile");
		return mv;
	}	
	
	@RequestMapping(value={"/contactus"}, method=RequestMethod.POST)
	public ModelAndView sendEmail() {
		
    	//    creates a simple e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo("muneer.yachb@gmail.com");
        email.setSubject("Test");
        email.setText("This is a test email");
         
        // sends the e-mail
        //mailSender.send(email);		
		
		ModelAndView mv = new ModelAndView("contactUsAjaxTile");
		return mv;
	}		
	
	
}
