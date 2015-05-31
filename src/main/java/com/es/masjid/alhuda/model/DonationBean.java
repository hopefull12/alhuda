package com.es.masjid.alhuda.model;

import java.math.BigDecimal;

public class DonationBean {

	/* Credit card information  */
	
	/* Personal Information */
	
	private String firstName;
	private String lastName;
	
	/* Donation Data  */
	private String paymentMethodChoice;
	private String currency;
	private BigDecimal amount;
	private String paymentMethod;
	private String donationCategory;
	private String description;
	
	
	

	public String getPaymentMethodChoice() {
		return paymentMethodChoice;
	}
	public void setPaymentMethodChoice(String paymentMethodChoice) {
		this.paymentMethodChoice = paymentMethodChoice;
	}
	public String getDonationCategory() {
		return donationCategory;
	}
	public void setDonationCategory(String donationCategory) {
		this.donationCategory = donationCategory;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}	
	
}
