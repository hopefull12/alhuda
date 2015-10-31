package com.es.masjid.deleted;

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

@PropertySource("classpath:application.properties")
@Controller
public class DeletedCodeController {
	
	@Resource
	private Environment env;	
	Logger logger = LoggerFactory.getLogger(DeletedCodeController.class);	
	
	@RequestMapping(value={"/dailySchedule"}, method=RequestMethod.GET)
	public @ResponseBody DailyScheduleBean dailySchedule(){
				
		RestTemplate restTemplate = new RestTemplate();
		
		String dailyScheduleURL = env.getRequiredProperty("rest.madmin.dailyschedule");
		logger.debug("URL for daily schedule"+dailyScheduleURL);
		
		DailyScheduleBean bean = restTemplate.getForObject(dailyScheduleURL, DailyScheduleBean.class);
		
		return bean;
	}	
	
//	public DailyScheduleBean getTodaySchedule(){
//	
//	RestTemplate restTemplate = new RestTemplate();
//	String dailScheduleURL = env.getRequiredProperty(REST_DAILY_SCHEDULE_URL);
//	
//	logger.info("Daily  schedule URL: "+dailScheduleURL);
//	
//	DailyScheduleBean bean = (DailyScheduleBean)restTemplate.getForObject(dailScheduleURL, DailyScheduleBean.class);
//	
//	return bean;		
//	
//}	
	
//	public List<Map<String, String>> getTodaySchedule2(){
//	RestTemplate restTemplate = new RestTemplate();
//	String pdfFilesURL = env.getRequiredProperty(REST_DAILY_SCHEDULE_URL);
//	
//	HttpHeaders headers = new HttpHeaders();
//	headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
//	HttpEntity<?> entity = new HttpEntity<>(headers);
//	
//	UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(pdfFilesURL);
//	        //.queryParam("itemType", itemType);		
//	
//	ParameterizedTypeReference<List<Map<String, String>>> typeRef = new ParameterizedTypeReference<List<Map<String, String>>>() {};
//	
//	ResponseEntity<List<Map<String, String>>> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, typeRef);
//	
//	List<Map<String, String>> items = response.getBody();
//	
//	if(items != null){
//		logger.info("Number of items of type "+itemType+" retrieved: "+items.size());
//	}
//	
//	return response.getBody();
//}
	
//	public List<String> getNewsItems(){
//	RestTemplate restTemplate = new RestTemplate();
//	String pdfFilesURL = env.getRequiredProperty(REST_NEWS_ITEMS_URL);
//	
//	List<String> newsItems = restTemplate.getForObject(pdfFilesURL, List.class);
//	return newsItems;
//}

//public List<Map<String, String>> getNewsItems2(){
//	RestTemplate restTemplate = new RestTemplate();
//	String pdfFilesURL = env.getRequiredProperty(REST_NEWS_URL);
//	
//	HttpHeaders headers = new HttpHeaders();
//	headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
//	HttpEntity<?> entity = new HttpEntity<>(headers);
//	
//	UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(pdfFilesURL)
//	        .queryParam("itemType", "NEWS");		
//	
//	ParameterizedTypeReference<List<Map<String, String>>> typeRef = new ParameterizedTypeReference<List<Map<String, String>>>() {};
//	
//	ResponseEntity<List<Map<String, String>>> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, typeRef);
//	
//	List<Map<String, String>> responseBody = response.getBody();
//	Map m = responseBody.get(0);
//	
//	List<String> list = new ArrayList<String>(m.keySet());
//	return responseBody;
//}	
	
//	public List<Map<String, String>> getPrayerTimes(String fromDate, String toDate){
//	RestTemplate restTemplate = new RestTemplate();
//	String ptURL = env.getRequiredProperty(REST_PRAYERTIMES_URL);
//	
//	HttpHeaders headers = new HttpHeaders();
//	headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
//	HttpEntity<?> entity = new HttpEntity<>(headers);
//	
//	UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(ptURL)
//	        .queryParam("fromDate", fromDate).queryParam("toDate", toDate);		
//	
//	ParameterizedTypeReference<List<Map<String, String>>> typeRef = new ParameterizedTypeReference<List<Map<String, String>>>() {};
//	
//	ResponseEntity<List<Map<String, String>>> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, typeRef);
//	
//	//List<Map<String, String>> items = response.getBody();
//	
////	if(items != null){
////		logger.info("Number of items of type "+itemType+" retrieved: "+items.size());
////	}
//	
//	return response.getBody();
//}		
	
	
//	public List<String> getPDFFiles() throws IOException{
//	RestTemplate restTemplate = new RestTemplate();
//	String pdfFilesURL = env.getRequiredProperty(REST_PRAYERTIME_PDF_URL);
//	logger.info("PDF File URL: "+pdfFilesURL);
//	List<String> fileNames = restTemplate.getForObject(pdfFilesURL, List.class);
//	return fileNames;				
//}	
	
//	public ByteArrayResource getFileByFileName(String fileName) throws IOException{
//	
//	RestTemplate restTemplate = new RestTemplate();
//	String ptPDFFileURL = env.getRequiredProperty(REST_PRAYERTIME_PDF_URL) + "/" + fileName +"/";
//	
//	logger.info("Prayer Time PDF file download URL: "+ptPDFFileURL);
//	
//	ByteArrayResource bean = restTemplate.getForObject(ptPDFFileURL, ByteArrayResource.class);
//	
//	return bean;		
//	
//}	

}
