package com.es.masjid.alhuda.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.core.env.Environment;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;

import com.es.masjid.alhuda.model.DailyScheduleBean;
import com.es.masjid.shared.UploadedFilesBean;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@PropertySource("classpath:application.properties")
@Component
public class MasjidService {
	
	@Resource
	private Environment env;	
	
    private MailSender mailSender;
    private SimpleMailMessage templateMessage;	
	
	private static String REST_DAILY_SCHEDULE_URL = "rest.madmin.dailyschedule";
	private static String REST_PRAYERTIME_PDF_URL = "rest.madmin.ptPdfFiles";
	private static String REST_DOWNLOAD_FILE_URL = "rest.madmin.downloadfile";
	private static String REST_NEWS_ITEMS_URL = "rest.madmin.newsitems";
	
	private static String REST_NEWS_URL = "rest.madmin.news";
	private static String REST_PRAYERTIMES_URL = "rest.madmin.pt";
	private Logger logger = LoggerFactory.getLogger(MasjidService.class);
	
	public DailyScheduleBean getTodaySchedule(){
		
		RestTemplate restTemplate = new RestTemplate();
		String dailScheduleURL = env.getRequiredProperty(REST_DAILY_SCHEDULE_URL);
		
		logger.info("Daily  schedule URL: "+dailScheduleURL);
		
		DailyScheduleBean bean = (DailyScheduleBean)restTemplate.getForObject(dailScheduleURL, DailyScheduleBean.class);
		
		return bean;		
		
	}
	
	public Map<String, String> getTodaySchedule2(){
		List<Map<String, String>> pt = getPrayerTimes();	
		Map<String, String> map = pt.get(0);	
		return map;	
	}	
	
//	public List<Map<String, String>> getTodaySchedule2(){
//		RestTemplate restTemplate = new RestTemplate();
//		String pdfFilesURL = env.getRequiredProperty(REST_DAILY_SCHEDULE_URL);
//		
//		HttpHeaders headers = new HttpHeaders();
//		headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
//		HttpEntity<?> entity = new HttpEntity<>(headers);
//		
//		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(pdfFilesURL);
//		        //.queryParam("itemType", itemType);		
//		
//		ParameterizedTypeReference<List<Map<String, String>>> typeRef = new ParameterizedTypeReference<List<Map<String, String>>>() {};
//		
//		ResponseEntity<List<Map<String, String>>> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, typeRef);
//		
//		List<Map<String, String>> items = response.getBody();
//		
//		if(items != null){
//			logger.info("Number of items of type "+itemType+" retrieved: "+items.size());
//		}
//		
//		return response.getBody();
//	}	
	
	public List<String> getPDFFiles() throws IOException{
		RestTemplate restTemplate = new RestTemplate();
		String pdfFilesURL = env.getRequiredProperty(REST_PRAYERTIME_PDF_URL);
		logger.info("PDF File URL: "+pdfFilesURL);
		List<String> fileNames = restTemplate.getForObject(pdfFilesURL, List.class);
		return fileNames;				
	}	
	
	public UploadedFilesBean getPDFFiles2() throws IOException{
		RestTemplate restTemplate = new RestTemplate();
		String pdfFilesURL = env.getRequiredProperty(REST_PRAYERTIME_PDF_URL);
		logger.info("PDF File URL: "+pdfFilesURL);
		UploadedFilesBean bean = restTemplate.getForObject(pdfFilesURL, UploadedFilesBean.class);
		return bean;				
	}	
	
	public ByteArrayResource getFileByFileName(String fileName) throws IOException{
		
		RestTemplate restTemplate = new RestTemplate();
		String ptPDFFileURL = env.getRequiredProperty(REST_PRAYERTIME_PDF_URL) + "/" + fileName +"/";
		
		logger.info("Prayer Time PDF file download URL: "+ptPDFFileURL);
		
		ByteArrayResource bean = restTemplate.getForObject(ptPDFFileURL, ByteArrayResource.class);
		
		return bean;		
		
	}
	
	public ByteArrayResource getFileByFileName2(String fileName) throws IOException{
		
		RestTemplate restTemplate = new RestTemplate();
		String ptPDFFileURL = env.getRequiredProperty(REST_DOWNLOAD_FILE_URL) + fileName +"/";
		
		logger.info("Prayer Time PDF file download URL: "+ptPDFFileURL);
		
		ByteArrayResource bean = restTemplate.getForObject(ptPDFFileURL, ByteArrayResource.class);
		
		return bean;		
		
	}	
	
//	public List<String> getNewsItems(){
//		RestTemplate restTemplate = new RestTemplate();
//		String pdfFilesURL = env.getRequiredProperty(REST_NEWS_ITEMS_URL);
//		
//		List<String> newsItems = restTemplate.getForObject(pdfFilesURL, List.class);
//		return newsItems;
//	}
	
//	public List<Map<String, String>> getNewsItems2(){
//		RestTemplate restTemplate = new RestTemplate();
//		String pdfFilesURL = env.getRequiredProperty(REST_NEWS_URL);
//		
//		HttpHeaders headers = new HttpHeaders();
//		headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
//		HttpEntity<?> entity = new HttpEntity<>(headers);
//		
//		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(pdfFilesURL)
//		        .queryParam("itemType", "NEWS");		
//		
//		ParameterizedTypeReference<List<Map<String, String>>> typeRef = new ParameterizedTypeReference<List<Map<String, String>>>() {};
//		
//		ResponseEntity<List<Map<String, String>>> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, typeRef);
//		
//		List<Map<String, String>> responseBody = response.getBody();
//		Map m = responseBody.get(0);
//		
//		List<String> list = new ArrayList<String>(m.keySet());
//		return responseBody;
//	}	
	
	public List<Map<String, String>> getItems(String itemType){
		RestTemplate restTemplate = new RestTemplate();
		String pdfFilesURL = env.getRequiredProperty(REST_NEWS_URL);
		
		HttpHeaders headers = new HttpHeaders();
		headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
		HttpEntity<?> entity = new HttpEntity<>(headers);
		
		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(pdfFilesURL)
		        .queryParam("itemType", itemType);		
		
		ParameterizedTypeReference<List<Map<String, String>>> typeRef = new ParameterizedTypeReference<List<Map<String, String>>>() {};
		
		ResponseEntity<List<Map<String, String>>> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, typeRef);
		
		List<Map<String, String>> items = response.getBody();
		
		if(items != null){
			logger.info("Number of items of type "+itemType+" retrieved: "+items.size());
		}
		
		return response.getBody();
	}	
	
	public String getPrayerTimesAsString(){
		
		List<Map<String, String>> map = getPrayerTimes();
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(map);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.debug("Prayer Times: "+result);
		return result;
	}	
	
	private List<Map<String, String>> getPrayerTimes(){
		RestTemplate restTemplate = new RestTemplate();
		String ptURL = env.getRequiredProperty(REST_PRAYERTIMES_URL);
		
		HttpHeaders headers = new HttpHeaders();
		headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
		HttpEntity<?> entity = new HttpEntity<>(headers);
		
		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(ptURL);
		        //.queryParam("fromDate", fromDate).queryParam("toDate", toDate);		
		
		ParameterizedTypeReference<List<Map<String, String>>> typeRef = new ParameterizedTypeReference<List<Map<String, String>>>() {};
		
		ResponseEntity<List<Map<String, String>>> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, typeRef);
		return response.getBody();	
	}		
	
//	public List<Map<String, String>> getPrayerTimes(String fromDate, String toDate){
//		RestTemplate restTemplate = new RestTemplate();
//		String ptURL = env.getRequiredProperty(REST_PRAYERTIMES_URL);
//		
//		HttpHeaders headers = new HttpHeaders();
//		headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
//		HttpEntity<?> entity = new HttpEntity<>(headers);
//		
//		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(ptURL)
//		        .queryParam("fromDate", fromDate).queryParam("toDate", toDate);		
//		
//		ParameterizedTypeReference<List<Map<String, String>>> typeRef = new ParameterizedTypeReference<List<Map<String, String>>>() {};
//		
//		ResponseEntity<List<Map<String, String>>> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, typeRef);
//		
//		//List<Map<String, String>> items = response.getBody();
//		
////		if(items != null){
////			logger.info("Number of items of type "+itemType+" retrieved: "+items.size());
////		}
//		
//		return response.getBody();
//	}	
	
    public void sendEmail(String to, String text) {

        // Do the business calculations...

        // Call the collaborators to persist the order...

        // Create a thread safe "copy" of the template message and customize it
        SimpleMailMessage msg = new SimpleMailMessage();
        msg.setTo("");
        msg.setSubject("Test Spring Email");
        msg.setText("This is a test email");
        try{
            this.mailSender.send(msg);
        }
        catch (MailException ex) {
            // simply log it and go on...
            System.err.println(ex.getMessage());
        }
    }	

	public MailSender getMailSender() {
		return mailSender;
	}

	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}

	public SimpleMailMessage getTemplateMessage() {
		return templateMessage;
	}

	public void setTemplateMessage(SimpleMailMessage templateMessage) {
		this.templateMessage = templateMessage;
	}	
	
	
}
