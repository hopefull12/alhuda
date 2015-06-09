package com.es.masjid.alhuda.backup;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.es.masjid.alhuda.model.DonationBean;
import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.OAuthTokenCredential;
import com.paypal.base.rest.PayPalRESTException;

@Controller
public class PaymentUsingPaypalAccountController {

	@RequestMapping(value="/donation", method=RequestMethod.GET)
	public ModelAndView displayDonationView() {
		ModelAndView mav = new ModelAndView("donation", "doantionBean", new DonationBean());
		return mav;
	}	
	
	@RequestMapping(value="/donate", method=RequestMethod.GET)
	public ModelAndView displayDonationButtonView() {
		ModelAndView mav = new ModelAndView("donationTile", "doantionBean", new DonationBean());
		return mav;
	}		
	
	@RequestMapping(value="/donation", method=RequestMethod.POST)
	public ModelAndView createNewShop(@ModelAttribute @Valid DonationBean bean,
			BindingResult result,
			final RedirectAttributes redirectAttributes) {
		
		String accessToken = getAccessToken();
		String redirectLink = makePayment(accessToken);
		
		if (result.hasErrors())
			return new ModelAndView("shop-new");
		
		ModelAndView mav = new ModelAndView();
		String message = "New shop was successfully created.";
		
		
		mav.setViewName("redirect:"+redirectLink);
				
		redirectAttributes.addFlashAttribute("message", message);	
		return mav;		
	}
	
	
	private String getAccessToken(){
		String accessToken = null;
		Map<String, String> sdkConfig = new HashMap<String, String>();
		sdkConfig.put("mode", "sandbox");

		try {
			accessToken = new OAuthTokenCredential("AQkquBDf1zctJOWGKWUEtKXm6qVhueUEMvXO_-MCI4DQQ4-LWvkDLIN2fGsd", "EL1tVxAjhT7cJimnz5-Nsx9k2reTKSVfErNQF-CmrwJgxRtylkGTKlU4RvrX", sdkConfig).getAccessToken();
		} catch (PayPalRESTException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return accessToken;
	}
	
	private String makePayment(String accessToken){
		Map<String, String> sdkConfig = new HashMap<String, String>();
		sdkConfig.put("mode", "sandbox");

		//String accessToken = "Bearer A015XqgSXpttQxsNdAzq6DiMBx8oWx8p3Jt2wEyK-OmExEA";
		APIContext apiContext = new APIContext(accessToken);
		apiContext.setConfigurationMap(sdkConfig);

		Amount amount = new Amount();
		amount.setCurrency("USD");
		amount.setTotal("25");

		Transaction transaction = new Transaction();
		transaction.setDescription("Creating a payment for $"+amount.getTotal());
		transaction.setAmount(amount);

		List<Transaction> transactions = new ArrayList<Transaction>();
		transactions.add(transaction);

		Payer payer = new Payer();
		payer.setPaymentMethod("paypal");

		Payment payment = new Payment();
		payment.setIntent("sale");
		payment.setPayer(payer);
		payment.setTransactions(transactions);
		RedirectUrls redirectUrls = new RedirectUrls();
		redirectUrls.setCancelUrl("https://devtools-paypal.com/guide/pay_paypal?cancel=true");
		redirectUrls.setReturnUrl("https://devtools-paypal.com/guide/pay_paypal?success=true");
		payment.setRedirectUrls(redirectUrls);

		String redirectLink = null;
		try {
			Payment createdPayment = payment.create(apiContext);
			List<Links> links = createdPayment.getLinks();
			
			for(Links link : links){
				if("redirect".equals(link.getMethod().toLowerCase())){
					redirectLink = link.getHref();
				}
			}
			
			System.out.println();
		} catch (PayPalRESTException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return redirectLink;
	}
}
