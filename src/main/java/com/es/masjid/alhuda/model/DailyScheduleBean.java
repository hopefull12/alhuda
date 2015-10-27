package com.es.masjid.alhuda.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;



@JsonIgnoreProperties(ignoreUnknown = true)
public class DailyScheduleBean {
	
	private String fajarTime;
	private String fajarIqamaTime;
	private String fajarBufferTime;
	private String sunriseTime;
	private String dhuhrTime;
	private String dhuhrIqamaTime;
	private String dhuhrBufferTime;
	private String asrTime;
	private String asrIqamaTime;
	private String asrBufferTime;
	private String maghribTime;
	private String maghribIqamaTime;
	private String maghribBufferTime;
	private String ishaTime;
	private String ishaIqamaTime;
	private String ishaBufferTime;
	private String date;
	private String jumah1Time;
	private String jumah1IqamaTime;
	private String jumah1BufferTime;
	private String jumah2Time;
	private String jumah2IqamaTime;
	private String jumah2BufferTime;
	

	public String getFajarTime() {
		return fajarTime;
	}
	public void setFajarTime(String fajarTime) {
		this.fajarTime = fajarTime;
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

	public String getAsrTime() {
		return asrTime;
	}
	public void setAsrTime(String asrTime) {
		this.asrTime = asrTime;
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
	public String getFajarBufferTime() {
		return fajarBufferTime;
	}
	public void setFajarBufferTime(String fajarBufferTime) {
		this.fajarBufferTime = fajarBufferTime;
	}
	public String getDhuhrBufferTime() {
		return dhuhrBufferTime;
	}
	public void setDhuhrBufferTime(String dhuhrBufferTime) {
		this.dhuhrBufferTime = dhuhrBufferTime;
	}
	public String getDhuhrTime() {
		return dhuhrTime;
	}
	public void setDhuhrTime(String dhuhrTime) {
		this.dhuhrTime = dhuhrTime;
	}
	public String getDhuhrIqamaTime() {
		return dhuhrIqamaTime;
	}
	public void setDhuhrIqamaTime(String dhuhrIqamaTime) {
		this.dhuhrIqamaTime = dhuhrIqamaTime;
	}
	public String getAsrIqamaTime() {
		return asrIqamaTime;
	}
	public void setAsrIqamaTime(String asrIqamaTime) {
		this.asrIqamaTime = asrIqamaTime;
	}
	public String getAsrBufferTime() {
		return asrBufferTime;
	}
	public void setAsrBufferTime(String asrBufferTime) {
		this.asrBufferTime = asrBufferTime;
	}
	public String getMaghribTime() {
		return maghribTime;
	}
	public void setMaghribTime(String maghribTime) {
		this.maghribTime = maghribTime;
	}
	public String getMaghribIqamaTime() {
		return maghribIqamaTime;
	}
	public void setMaghribIqamaTime(String maghribIqamaTime) {
		this.maghribIqamaTime = maghribIqamaTime;
	}
	public String getMaghribBufferTime() {
		return maghribBufferTime;
	}
	public void setMaghribBufferTime(String maghribBufferTime) {
		this.maghribBufferTime = maghribBufferTime;
	}
	public String getIshaTime() {
		return ishaTime;
	}
	public void setIshaTime(String ishaTime) {
		this.ishaTime = ishaTime;
	}
	public String getIshaIqamaTime() {
		return ishaIqamaTime;
	}
	public void setIshaIqamaTime(String ishaIqamaTime) {
		this.ishaIqamaTime = ishaIqamaTime;
	}
	public String getIshaBufferTime() {
		return ishaBufferTime;
	}
	public void setIshaBufferTime(String ishaBufferTime) {
		this.ishaBufferTime = ishaBufferTime;
	}
	public String getJumah1BufferTime() {
		return jumah1BufferTime;
	}
	public void setJumah1BufferTime(String jumah1BufferTime) {
		this.jumah1BufferTime = jumah1BufferTime;
	}
	public String getJumah2BufferTime() {
		return jumah2BufferTime;
	}
	public void setJumah2BufferTime(String jumah2BufferTime) {
		this.jumah2BufferTime = jumah2BufferTime;
	}
	
	public String toJsonString(){
		String jsonstr = "{}";
		ObjectMapper mapper = new ObjectMapper();
		try {
			jsonstr = mapper.writeValueAsString(this);
		} catch (JsonProcessingException e) {
			return jsonstr;
		}
		return jsonstr;
	}
	
}
