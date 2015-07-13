package com.es.masjid.shared;

import java.util.List;

public class UploadedFilesBean {

	private List<String[]> prayerTimeFiles;
	private List<String[]> ramadanFiles;
	private List<String[]> miscFiles;
	
	public List<String[]> getPrayerTimeFiles() {
		return prayerTimeFiles;
	}
	public void setPrayerTimeFiles(List<String[]> prayerTimeFiles) {
		this.prayerTimeFiles = prayerTimeFiles;
	}
	public List<String[]> getRamadanFiles() {
		return ramadanFiles;
	}
	public void setRamadanFiles(List<String[]> ramadanFiles) {
		this.ramadanFiles = ramadanFiles;
	}
	public List<String[]> getMiscFiles() {
		return miscFiles;
	}
	public void setMiscFiles(List<String[]> miscFiles) {
		this.miscFiles = miscFiles;
	}

}
