package com.es.masjid.alhuda.backup;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.es.masjid.alhuda.model.DonationBean;

public class RecurringPaymentController {

	@RequestMapping(value="/donation", method=RequestMethod.GET)
	public ModelAndView displayDonationView() {
		ModelAndView mav = new ModelAndView("donation", "doantionBean", new DonationBean());
		return mav;
	}		
}
