package com.es.masjid.alhuda.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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

@Controller
public class StaticPageController {

	
	@Autowired
	private MasjidService masjidService;
	
	@RequestMapping(value={"/sundayschoolfaculty"}, method=RequestMethod.GET)
	public ModelAndView sundaySchoolFaculty() {
		return new ModelAndView("sundayschoolfaculty");
	}		
	
	@RequestMapping(value={"/board"}, method=RequestMethod.GET)
	public ModelAndView board() {
		return new ModelAndView("masjidBoardTile");
	}		
	
	@RequestMapping(value={"/underconstruction"}, method=RequestMethod.GET)
	public ModelAndView underConstruction() {
		return new ModelAndView("underConstructionTile");
	}		
	
	@RequestMapping(value = "/ptPDFFiles", method = RequestMethod.GET)
	public ModelAndView displayPDFFiles()
	                                                                  throws IOException {
		ModelAndView mv = new ModelAndView("prayerTimePdfFilesTile");
		List<String> fileNames = masjidService.getPDFFiles();
		mv.addObject("ptPdfFiles", fileNames);
		return mv;
	}	
	
	@RequestMapping(value = "/ptPDFFiles/{fileName}", method = RequestMethod.GET)
	public ResponseEntity<InputStreamResource> downloadPDFFile(@PathVariable("fileName") String fileName)
	                                                                  throws IOException {
		InputStream is = masjidService.getFileByFileName(fileName);
		
	    HttpHeaders respHeaders = new HttpHeaders();
	    respHeaders.setContentType(MediaType.parseMediaType("application/pdf"));
	    respHeaders.setContentLength(12345678);
	    respHeaders.setContentDispositionFormData("attachment", fileName);
	    System.out.println();
	    InputStreamResource isr = new InputStreamResource(is);
	    return new ResponseEntity<InputStreamResource>(isr, respHeaders, HttpStatus.OK);
	}	
	

	
}
