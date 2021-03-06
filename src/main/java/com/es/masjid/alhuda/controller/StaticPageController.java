package com.es.masjid.alhuda.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.es.masjid.alhuda.service.MasjidService;
import com.es.masjid.deleted.DailyScheduleBean;
import com.es.masjid.deleted.UploadedFilesBean;

@Controller
public class StaticPageController {

	
	@Autowired
	private MasjidService masjidService;
	
	@RequestMapping(value={"/sundayschoolfaculty"}, method=RequestMethod.GET)
	public ModelAndView sundaySchoolFaculty() {
		return new ModelAndView("sundayschoolfaculty");
	}		
	
	@RequestMapping(value={"/opt"}, method=RequestMethod.GET)
	public ModelAndView onlyPrayerTimes() {
		
		ModelAndView mv = new ModelAndView("onlyPrayerTimesTile");
		
		Map<String, String> bean = masjidService.getTodaySchedule2();
		mv.addObject("dailySchedule", bean);		
		mv.addObject("prayerTimesData", masjidService.getPrayerTimesAsString("MONTHLY"));
		
		return mv;
	}	
	
	@RequestMapping(value={"/board"}, method=RequestMethod.GET)
	public ModelAndView board() {
		return new ModelAndView("masjidBoardTile");
	}		
	
	@RequestMapping(value={"/masjidExpansionProject"}, method=RequestMethod.GET)
	public ModelAndView masjidExpansionProject() {
		return new ModelAndView("masjidExpansionTile");
	}	
	
	@RequestMapping(value={"/underconstruction"}, method=RequestMethod.GET)
	public ModelAndView underConstruction() {
		return new ModelAndView("underConstructionTile");
	}		
	
	@RequestMapping(value={"/sundayschool"}, method=RequestMethod.GET)
	public ModelAndView sundaySchool() {
		return new ModelAndView("sundayschoolTile");
	}	
	
	@RequestMapping(value={"/tickets"}, method=RequestMethod.GET)
	public ModelAndView buyTickets() {
		return new ModelAndView("ticketsTile");
	}	
	
//	@RequestMapping(value = "/ptPDFFiles", method = RequestMethod.GET)
//	public ModelAndView displayPDFFiles()
//	                                                                  throws IOException {
//		ModelAndView mv = new ModelAndView("prayerTimePdfFilesTile");
//		List<String> fileNames = masjidService.getPDFFiles();
//		mv.addObject("ptPdfFiles", fileNames);
//		return mv;
//	}	
	
	@RequestMapping(value = "/ptPDFFiles2", method = RequestMethod.GET)
	public ModelAndView displayPDFFiles2()
	                                                                  throws IOException {
		ModelAndView mv = new ModelAndView("pdfFilesTile");
		UploadedFilesBean bean = masjidService.getPDFFiles2();
		mv.addObject("ptPdfFiles", bean);
		return mv;
	}		
	
	@RequestMapping(value = "/prayertimes", method = RequestMethod.GET)
	public ModelAndView prayersTimePage() throws IOException {
		ModelAndView mv = new ModelAndView("pdfFilesTile");
		//UploadedFilesBean bean = masjidService.getPDFFiles2();
		//mv.addObject("ptPdfFiles", bean);
		mv.addObject("ptlist", masjidService.getItems("PT_PDF"));
		return mv;
	}	
	
	@RequestMapping(value = "/downloads", method = RequestMethod.GET)
	public ModelAndView downloadsPage() throws IOException {
		ModelAndView mv = new ModelAndView("downloadsTile");
		//UploadedFilesBean bean = masjidService.getPDFFiles2();
		//mv.addObject("ptPdfFiles", bean);
		mv.addObject("downloadlist", masjidService.getItems("DOWNLOADDOC"));
		return mv;
	}	
	
	@RequestMapping(value = "/downloadFile/{fileName}/", method = RequestMethod.GET)
	public ResponseEntity<InputStreamResource> downloadFile(@PathVariable("fileName") String fileName)
	                                                                  throws IOException {
		ByteArrayResource is = masjidService.getFileByFileName2(fileName);
		String fileExt = fileName.substring(fileName.indexOf("."), fileName.length());
		String mimeTypeToUse = null;
		System.out.println("The file ext is: "+fileExt);
		
		if(".pdf".equals(fileExt)){
			mimeTypeToUse = "pdf";
		}else if(".docx".equals(fileExt)){
			mimeTypeToUse = "vnd.openxmlformats-officedocument.wordprocessingml.document";
		}else if(".pptx".equals(fileExt)){
			mimeTypeToUse = "vnd.ms-excel";
		}
		
	    HttpHeaders respHeaders = new HttpHeaders();
	    respHeaders.setContentType(MediaType.parseMediaType("application/"+mimeTypeToUse));
	    respHeaders.setContentLength(is.contentLength());
	    //respHeaders.setContentDispositionFormData("attachment", fileName+".pdf");
	    
	    InputStreamResource isr = new InputStreamResource(is.getInputStream());
	    return new ResponseEntity<InputStreamResource>(isr, respHeaders, HttpStatus.OK);
	}		
	
//	@RequestMapping(value = "/ptPDFFiles/{fileName}/", method = RequestMethod.GET)
//	public ResponseEntity<InputStreamResource> downloadPDFFile(@PathVariable("fileName") String fileName)
//	                                                                  throws IOException {
//		ByteArrayResource is = masjidService.getFileByFileName(fileName);
//		String fileExt = fileName.substring(fileName.indexOf("."), fileName.length());
//		String mimeTypeToUse = null;
//		System.out.println("The file ext is: "+fileExt);
//		
//		if(".pdf".equals(fileExt)){
//			mimeTypeToUse = "pdf";
//		}else if(".docx".equals(fileExt)){
//			mimeTypeToUse = "vnd.openxmlformats-officedocument.wordprocessingml.document";
//		}else if(".pptx".equals(fileExt)){
//			mimeTypeToUse = "vnd.ms-excel";
//		}
//		
//	    HttpHeaders respHeaders = new HttpHeaders();
//	    respHeaders.setContentType(MediaType.parseMediaType("application/"+mimeTypeToUse));
//	    respHeaders.setContentLength(is.contentLength());
//	    //respHeaders.setContentDispositionFormData("attachment", fileName+".pdf");
//	    
//	    InputStreamResource isr = new InputStreamResource(is.getInputStream());
//	    return new ResponseEntity<InputStreamResource>(isr, respHeaders, HttpStatus.OK);
//	}	
	

	
}
