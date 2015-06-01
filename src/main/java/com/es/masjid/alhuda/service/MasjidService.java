package com.es.masjid.alhuda.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.es.masjid.alhuda.model.DailyScheduleBean;

@PropertySource("classpath:application.properties")
@Component
public class MasjidService {
	
	@Resource
	private Environment env;	
	
	private static String REST_DAILY_SCHEDULE_URL = "rest.madmin.dailyschedule";
	private Logger logger = LoggerFactory.getLogger(MasjidService.class);
	
	public DailyScheduleBean getTodaySchedule(){
		
		RestTemplate restTemplate = new RestTemplate();
		String dailScheduleURL = env.getRequiredProperty(REST_DAILY_SCHEDULE_URL);
		
		logger.info("Daily schedule URL: "+dailScheduleURL);
		
		DailyScheduleBean bean = restTemplate.getForObject(dailScheduleURL, DailyScheduleBean.class);
		
		return bean;		
		
	}
}
