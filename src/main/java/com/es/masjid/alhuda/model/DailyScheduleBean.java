package com.es.masjid.alhuda.model;


@com.fasterxml.jackson.annotation.JsonIgnoreProperties(ignoreUnknown = true)

public class DailyScheduleBean {
	
	private String fajarBeginTime;
	private String fajarIqamaTime;
	private String sunriseTime;
	private String dhuhrTIme;
	private String dhuhrIqamaTIme;
	private String asrTime;
	private String asrIqamaTIme;
	private String maghribTIme;
	private String maghribIqamaTIme;
	private String ishaTIme;
	private String ishaIqamaTIme;
	private String date;
	private String jumah1Time;
	private String jumah1IqamaTime;
	private String jumah2Time;
	private String jumah2IqamaTime;
	
	
	public String getFajarBeginTime() {
		return fajarBeginTime;
	}
	public void setFajarBeginTime(String fajarBeginTime) {
		this.fajarBeginTime =  fajarBeginTime;
	}
	public String getFajarIqamaTime() {
		return fajarIqamaTime;
	}
	public void setFajarIqamaTime(String fajarIqamaTime) {
		this.fajarIqamaTime = fajarIqamaTime;
	}
	public String getSunriseTime() {
		return sunriseTime;
	}
	public void setSunriseTime(String sunriseTime) {
		this.sunriseTime = sunriseTime;
	}
	public String getDhuhrTIme() {
		return dhuhrTIme;
	}
	public void setDhuhrTIme(String dhuhrTIme) {
		this.dhuhrTIme = dhuhrTIme;
	}
	public String getDhuhrIqamaTIme() {
		return dhuhrIqamaTIme;
	}
	public void setDhuhrIqamaTIme(String dhuhrIqamaTIme) {
		this.dhuhrIqamaTIme = dhuhrIqamaTIme;
	}
	public String getAsrTime() {
		return asrTime;
	}
	public void setAsrTime(String asrTime) {
		this.asrTime = asrTime;
	}
	public String getAsrIqamaTIme() {
		return asrIqamaTIme;
	}
	public void setAsrIqamaTIme(String asrIqamaTIme) {
		this.asrIqamaTIme = asrIqamaTIme;
	}
	public String getMaghribTIme() {
		return maghribTIme;
	}
	public void setMaghribTIme(String maghribTIme) {
		this.maghribTIme = maghribTIme;
	}
	public String getMaghribIqamaTIme() {
		return maghribIqamaTIme;
	}
	public void setMaghribIqamaTIme(String maghribIqamaTIme) {
		this.maghribIqamaTIme = maghribIqamaTIme;
	}
	public String getIshaTIme() {
		return ishaTIme;
	}
	public void setIshaTIme(String ishaTIme) {
		this.ishaTIme = ishaTIme;
	}
	public String getIshaIqamaTIme() {
		return ishaIqamaTIme;
	}
	public void setIshaIqamaTIme(String ishaIqamaTIme) {
		this.ishaIqamaTIme = ishaIqamaTIme;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getJumah1Time() {
		return jumah1Time;
	}
	public void setJumah1Time(String jumah1Time) {
		this.jumah1Time = jumah1Time;
	}
	public String getJumah1IqamaTime() {
		return jumah1IqamaTime;
	}
	public void setJumah1IqamaTime(String jumah1IqamaTime) {
		this.jumah1IqamaTime = jumah1IqamaTime;
	}
	public String getJumah2Time() {
		return jumah2Time;
	}
	public void setJumah2Time(String jumah2Time) {
		this.jumah2Time = jumah2Time;
	}
	public String getJumah2IqamaTime() {
		return jumah2IqamaTime;
	}
	public void setJumah2IqamaTime(String jumah2IqamaTime) {
		this.jumah2IqamaTime = jumah2IqamaTime;
	}


}
