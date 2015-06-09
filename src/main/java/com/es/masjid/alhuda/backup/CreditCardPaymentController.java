package com.es.masjid.alhuda.backup;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.es.masjid.alhuda.model.DailyScheduleBean;
import com.paypal.api.payments.Amount;
import com.paypal.api.payments.CreditCard;
import com.paypal.api.payments.FundingInstrument;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.OAuthTokenCredential;
import com.paypal.base.rest.PayPalRESTException;

@Controller
public class CreditCardPaymentController {

	@RequestMapping(value={"/creditCardPayment"}, method=RequestMethod.GET)
	public @ResponseBody DailyScheduleBean dailySchedule(){
				
		getAccessToken();
		makePayment();
		
		RestTemplate restTemplate = new RestTemplate();
		
		DailyScheduleBean bean = restTemplate.getForObject("http://localhost:8080/admin/dailySchedule", DailyScheduleBean.class);
		
//		DailyScheduleBean bean = new DailyScheduleBean();
//		bean.setFajarBeginTime("5:45am");
//		bean.setFajarIqamaTime("6:00am");
		
		return bean;
	}
	
	private void getAccessToken(){

		try {		
			
			Map<String, String> sdkConfig = new HashMap<String, String>();
			sdkConfig.put("mode", "sandbox");
			String accessToken = new OAuthTokenCredential("AQkquBDf1zctJOWGKWUEtKXm6qVhueUEMvXO_-MCI4DQQ4-LWvkDLIN2fGsd", "EL1tVxAjhT7cJimnz5-Nsx9k2reTKSVfErNQF-CmrwJgxRtylkGTKlU4RvrX", sdkConfig).getAccessToken();
			
		} catch (PayPalRESTException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
	}
	
	private void makePayment(){
		Map<String, String> sdkConfig = new HashMap<String, String>();
		sdkConfig.put("mode", "sandbox");

		APIContext apiContext = new APIContext("Bearer A015-I0CeEVbuVv.BKitqDM8KwF58evEvn9ykqc1fExnDec");
		apiContext.setConfigurationMap(sdkConfig);

		CreditCard creditCard = new CreditCard();
		creditCard.setType("visa");
		creditCard.setNumber("4446283280247004");
		creditCard.setExpireMonth(11);
		creditCard.setExpireYear(2018);
		creditCard.setFirstName("Joe");
		creditCard.setLastName("Shopper");

		FundingInstrument fundingInstrument = new FundingInstrument();
		fundingInstrument.setCreditCard(creditCard);

		List<FundingInstrument> fundingInstrumentList = new ArrayList<FundingInstrument>();
		fundingInstrumentList.add(fundingInstrument);

		Payer payer = new Payer();
		payer.setFundingInstruments(fundingInstrumentList);
		payer.setPaymentMethod("credit_card");

		Amount amount = new Amount();
		amount.setCurrency("USD");
		amount.setTotal("12");

		Transaction transaction = new Transaction();
		transaction.setDescription("creating a direct payment with credit card");
		transaction.setAmount(amount);

		List<Transaction> transactions = new ArrayList<Transaction>();
		transactions.add(transaction);

		Payment payment = new Payment();
		payment.setIntent("sale");
		payment.setPayer(payer);
		payment.setTransactions(transactions);

		try {
			Payment createdPayment = payment.create(apiContext);
			System.out.println();
		} catch (PayPalRESTException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
}
