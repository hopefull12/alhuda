		<section id="page-title">

			<div class="container clearfix">
				<h1>Masjid AlHuda Donation </h1>
				<ol class="breadcrumb">
					<li><a href="home.html">Home</a></li>					
					<li class="active">Donate</li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="col_one_fifth">
					</div>
					<div class="col_three_fifth">
						
								<h3>Please donate generously!</h3>									
	                            <div class="col_full">
	                                <label for="donationCategory">What category would you like to donate:</label>	                                                             
									<select id="donationCategory" name="donationCategory" class="form-control">
									  <option value="sadaqa">Sadaqa</option>
									  <option value="zakat">Zakat</option>
									  <option value="generalDonation">Donation</option>
									  <option value="divider">-------------------------------</option>
									  <option value="masjidExpansion">Masjid Expansion</option>
									  <option value="masjidMaintenance">Masjid Maintenance</option>
									  <option value="brickDonation">Brick Donation</option>
									</select>	    
								</div>	                                        
	                            
	                            <div class="col_full" id="zakatPPDiv" style="display: none" >	                            	
									<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
									<input type="hidden" name="cmd" value="_s-xclick">
									<input type="hidden" name="hosted_button_id" value="L6XP67UQUPGXY">
									<input type="image" width="230" height="65" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
									<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
									</form>							                           
	                            </div>	  
	                            <div class="col_full" id="sadakaPPDiv" >	                            	
									<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
									<input type="hidden" name="cmd" value="_s-xclick">
									<input type="hidden" name="hosted_button_id" value="XXG2QVPH3YUNJ">
									<input type="image" width="230" height="65" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
									<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
									</form>
						                           
	                            </div>		  
	                            <div class="col_full" id="generalDonationPPDiv" style="display: none">	                            	
									<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
									<input type="hidden" name="cmd" value="_s-xclick">
									<input type="hidden" name="hosted_button_id" value="8E9PWCCFVGPPW">
									<input type="image" width="230" height="65" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
									<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
									</form>						                           
	                            </div>		                                                      
	                            <div class="col_full" id="masjidExpansionPPDiv" style="display: none">	                            	
									<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
									<input type="hidden" name="cmd" value="_s-xclick">
									<input type="hidden" name="hosted_button_id" value="J7Z96RA75YXS8">
									<input type="image" width="230" height="65" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
									<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
									</form>							                            
	                            </div>	                            
	                            <div class="col_full" id="brickDonationPPDiv" style="display: none">	                            	
									<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
									<input type="hidden" name="cmd" value="_s-xclick">
									<input type="hidden" name="hosted_button_id" value="ERUPQBCQZXCDW">
									<input type="image" width="230" height="65" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
									<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
									</form>					                           
	                            </div>		                                                      
	                            <div class="col_full" id="masjidMaintenancePPDiv" style="display: none">	                            	
									<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
									<input type="hidden" name="cmd" value="_s-xclick">
									<input type="hidden" name="hosted_button_id" value="XMMY8UB65DML4">
									<input type="image" width="230" height="65" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
									<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
									</form>						                            
	                            </div>		                            	                                                                       																
						
						<script type="text/javascript">
						$(document).ready(function(){
							$("#donationCategory").change(function(){
								//alert("in yes");
						        var category = $("#donationCategory").val();
						        
						        var divId = category + "PPDiv";
						        
						        $( "div[id$='PPDiv']" ).each(function(){
						        								        		
						        		if($(this).attr('id') == divId){
						        			$(this).show();
						        		} else {
						        			$(this).hide();
						        		}
						        
						        });					        
						        
						    });						    
						});
				
						</script>						
										
					</div>
					<div class="col_one_fifth">
					</div>

				</div>

			</div>

		</section><!-- #content end -->