package com.es.masjid.alhuda.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.es.masjid.alhuda.model.DailyScheduleBean;

@PropertySource("classpath:application.properties")
@Component
public class MasjidService {
	
	@Resource
	private Environment env;	
	
	private static String REST_DAILY_SCHEDULE_URL = "rest.madmin.dailyschedule";
	private static String REST_PRAYERTIME_PDF_URL = "rest.madmin.ptPdfFiles";
	private Logger logger = LoggerFactory.getLogger(MasjidService.class);
	
	public DailyScheduleBean getTodaySchedule(){
		
		RestTemplate restTemplate = new RestTemplate();
		String dailScheduleURL = env.getRequiredProperty(REST_DAILY_SCHEDULE_URL);
		
		logger.info("Daily  schedule URL: "+dailScheduleURL);
		
		DailyScheduleBean bean = restTemplate.getForObject(dailScheduleURL, DailyScheduleBean.class);
		
		return bean;		
		
	}
	
	public List<String> getPDFFiles() throws IOException{
		RestTemplate restTemplate = new RestTemplate();
		String pdfFilesURL = env.getRequiredProperty(REST_PRAYERTIME_PDF_URL);
		logger.info("PDF File URL: "+pdfFilesURL);
		List<String> fileNames = restTemplate.getForObject(pdfFilesURL, List.class);
		return fileNames;				
	}	
	
	public InputStream getFileByFileName(String fileName) throws IOException{
		
		RestTemplate restTemplate = new RestTemplate();
		String dailScheduleURL = env.getRequiredProperty(REST_PRAYERTIME_PDF_URL);
		
		logger.info("Daily schedule URL: "+dailScheduleURL);
		
		ByteArrayResource bean = restTemplate.getForObject(dailScheduleURL, ByteArrayResource.class);
		
		
		return bean.getInputStream();		
		
	}	
}
