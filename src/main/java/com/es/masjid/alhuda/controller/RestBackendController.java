package com.es.masjid.alhuda.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.es.masjid.alhuda.model.DailyScheduleBean;

@PropertySource("classpath:application.properties")
@Controller
public class RestBackendController {
	
	@Resource
	private Environment env;	
	Logger logger = LoggerFactory.getLogger(RestBackendController.class);
	
	@RequestMapping(value={"/dailySchedule"}, method=RequestMethod.GET)
	public @ResponseBody DailyScheduleBean dailySchedule(){
				
		RestTemplate restTemplate = new RestTemplate();
		
		String dailyScheduleURL = env.getRequiredProperty("rest.madmin.dailyschedule");
		logger.debug("URL for daily schedule"+dailyScheduleURL);
		
		DailyScheduleBean bean = restTemplate.getForObject(dailyScheduleURL, DailyScheduleBean.class);
		
		return bean;
	}	

}
