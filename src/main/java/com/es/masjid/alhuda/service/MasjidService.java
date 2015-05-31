package com.es.masjid.alhuda.service;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.es.masjid.alhuda.model.DailyScheduleBean;

@Component
public class MasjidService {
	
	
	public DailyScheduleBean getTodaySchedule(){
		
		RestTemplate restTemplate = new RestTemplate();
		
		DailyScheduleBean bean = restTemplate.getForObject("http://localhost:8080/admin/dailySchedule", DailyScheduleBean.class);
		
		return bean;		
		
	}

}
