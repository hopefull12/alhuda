<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

        <section id="prayer-times">
        	<div class="content-wrap">
        		<div class="container clearfix">
        				
        			<c:if test="${fn:length(newsItems) gt 0}">
                    <div class="col_full ">

                        <div class="fslider testimonial twitter-scroll" data-animation="slide" data-arrows="false">
                            <div class="flexslider">
                                <div class="slider-wrap">
                                
                                	<c:forEach var="item" items="${newsItems}">
                                    <div class="slide">
                                  
                                        <div class="testi-content text-center">                                        	
                                            <p class="news-row">${item['news']}</p>                                            
                                        </div>
                                    </div>  
                                    </c:forEach>         
                                     
                                     
                                     <!-- 
		                            <div class="slide">
		                            	<div class="divcenter" style="width: 740px;">
			                                <a href="#">
			                                    <img src="images/alhuda/idcard.jpg" alt="Slide 1" style="width: 740px;">		                                    
			                                </a>
		                                </div>
		                            </div>   -->
		                            
		                                                               
                                            
                                </div>
                            </div>
                        </div>
                    
                    </div>    
                    </c:if> 
                     		
        			 
					<div class="clear"></div>
	      
        			<div class="col_four_fifth">
        		
                        <table class="table hidden-xs hidden-sm" id="prayertimegrid1">
                          <thead>
                            <tr>
                              <th></th>
                              <th><h3>Fajr</h3></th>
                              <th><h3>Sunrise</h3></th>
                              <th><h3>Dhuhr</h3></th>
                              <th><h3>Asr</h3></th>
                              <th><h3>Maghrib</h3></th>
                              <th><h3>Isha</h3></th>
                              <th><h3>Jumah 1</h3></th>
                              <th><h3>Jumah 2</h3></th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td><h4><span class="subtitle subtitle-font"><strong>Begins</strong></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.fajarTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.sunriseTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.dhuhrTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.asrTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.maghribTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.ishaTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah1Time}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah2Time}</h4></td>
                            </tr>
                            <tr class="active">
                              <td><h4><span class="subtitle subtitle-font"><strong>Iqama</strong></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.fajarIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle"></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.dhuhrIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.asrIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.maghribIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.ishaIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah1IqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah2IqamaTime}</span></h4></td>
                            </tr>
                            
                            <!-- 
                            <tr>
                            	<td colspan="6"><span style="text-right">Next Prayer:</span></td>
                            	<td colspan="3"><div id="countdown-ex3" class="countdown"></div></td>
                            </tr>                            
                            
                            
                            <tr>
                            	<td colspan="3"></td>
                            	<td colspan="2" class="prayer-counter-title"><h4><span class="subtitle subtitle-font"><strong>Next prayer is in:</strong></span></h4> </td>
                            	<td colspan="1">
                            		<div id="countdown-ex3" class="countdown"></div>
                            	</td>
                            	<td colspan="3"></td>
                            </tr>
                             -->
                                         
                          </tbody>
                        </table>                                       
        		
       		
                        <table class="table hidden-md hidden-lg" id="prayertimegrid2">
                        	<tbody>
                            <tr>
                              <th></th>
                              <td><h4><span class="subtitle"><strong>Begins</strong></span></h4></td>
                              <td class="success"><h4><span class="subtitle"><strong>Iqama</strong></span></h4></td>                              
                            </tr>
                            <tr>                             
                              <th class="nextprayer"><h3>Fajir</h3></th>           
                              <td><h4><span class="subtitle">${dailySchedule.fajarTime}</span></h4></td>       
                              <td class="success"><h4><span class="subtitle">${dailySchedule.fajarIqamaTime}</span></h4></td>  
                              
                            </tr>
                            <tr>                              
                              <th><h3>Sunrise</h3></th>        
                              <td><h4><span class="subtitle">${dailySchedule.sunriseTime}</h4></td>     
                              <td class="success"><h4><span class="subtitle"></span></h4></td>             
                            </tr>
                            <tr>
                              <th><h3>Dhuhr</h3></th>
                              <td class="nextprayer"><h4><span class="subtitle">${dailySchedule.dhuhrTime}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.dhuhrIqamaTime}</span></h4></td>
                            </tr>          
                            <tr>
                              <th><h3>Asr</h3></th>
                              <td><h4><span class="subtitle">${dailySchedule.asrTime}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.asrIqamaTime}</span></h4></td>
                            </tr>      
                            <tr>
                              <th><h3>Maghrib</h3></th>
                              <td><h4><span class="subtitle">${dailySchedule.maghribTime}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.maghribIqamaTime}</span></h4></td>
                            </tr>
                            <tr>
                              <th><h3>Isha</h3></th>
                              <td><h4><span class="subtitle">${dailySchedule.ishaTime}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.ishaIqamaTime}</span></h4></td>
                            </tr>                   
                            <tr>
                              <th><h3>Jumah 1</h3></th>
                              <td><h4><span class="subtitle">${dailySchedule.jumah1Time}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.jumah1IqamaTime}</span></h4></td>
                            </tr>  
                            <tr>
                              <th><h3>Jumah 2</h3></th>
                              <td><h4><span class="subtitle">${dailySchedule.jumah2Time}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.jumah2IqamaTime}</span></h4></td>
                            </tr>     

                            </tbody>                         
                        </table>          	
                        <input id="prayerTimesData" type="hidden" value='${prayerTimesData}'>
                        <!-- 
        				<div class="col_full text-right">
        					<div class="col_two_third">
        						Next prayer:
        					</div>
        					<div class="col_one_third col_last divleft">
                        		 <div id="countdown-ex3" class="countdown"></div>
                        	</div>       				
        		
        				</div>     
        				 -->
        				                   	
                        
						<script type="text/javascript">

						
						$(document).ready(function(){														
							
							window.masjidData.ptplugin.slider();
					    
						});
				
						</script>                        
       		      		
					</div>
					
					<div class="divcenter col_one_fifth col_last">
						
						<div class="icons-donationbox-container">
		
							<div class="icons-container text-center">
								<a href="#" class="social-icon si-dark si-rounded si-facebook">
								    <i class="icon-facebook"></i>
								    <i class="icon-facebook"></i>
								</a>				
								<a href="#" class="social-icon si-dark si-rounded si-facebook">
								    <i class="icon-twitter"></i>
								    <i class="icon-twitter"></i>
								</a>					
								<a href="#" class="social-icon si-dark si-rounded si-facebook">
								    <i class="icon-youtube"></i>
								    <i class="icon-youtube"></i>
								</a>				
								<a href="#" class="social-icon si-dark si-rounded si-facebook">
								    <i class="icon-email3"></i>
								    <i class="icon-email3"></i>
								</a>
							</div>															
																
							<div>
								<a href="donate.html">
									<img alt="" width="230" height="85" src="images/alhuda/Paypal1.png">
								</a>
							</div>				
						</div>	
					</div>

       		
        			<div class="clear"></div>
        		</div>
        	</div>
        </section>

        <section id="slider" class="swiper_wrapper clearfix">

            <div class="swiper-container swiper-parent">
                <div class="swiper-wrapper">
                    <div class="swiper-slide dark" style="background-image: url('<spring:eval expression="@environment.getProperty('alhuda.images')" />al-new-model2.jpg');">
                    	<a href="masjidExpansionProject.html">
	                        <div class="container clearfix">                        	
	                            <div class="slider-caption slider-caption-center">
	                                <h2 data-caption-animate="fadeInUp">Masjid Al Huda Expansion</h2>
	                                <p data-caption-animate="fadeInUp" data-caption-delay="200">Please support the masjid project &amp; school construction projects for building a better community.</p>
	                            </div>                            
	                        </div>
                        </a>
                    </div>
                     
                    <div class="swiper-slide dark" style="background-image: url('<spring:eval expression="@environment.getProperty('alhuda.images')" />al-new-model6.jpg');">
                    	<a href="masjidExpansionProject.html">
	                        <div class="container clearfix">
	                            <div class="slider-caption slider-caption-center">
	                                <h2 data-caption-animate="fadeInUp">Support The Noble Cause</h2>
	                                <p data-caption-animate="fadeInUp" data-caption-delay="200">Masjid Alhuda Expansion Project</p> 
	                            </div>
	                        </div>
                        </a>
                    </div>                        
                            
                      
                </div>
                <div id="slider-arrow-left"><i class="icon-angle-left"></i></div>
                <div id="slider-arrow-right"><i class="icon-angle-right"></i></div>
                <div id="slide-number"><div id="slide-number-current"></div><span>/</span><div id="slide-number-total"></div></div>
            </div>

            <script>
                jQuery(document).ready(function($){
                    var swiperSlider = new Swiper('.swiper-parent',{
                        paginationClickable: false,
                        slidesPerView: 1,
                        grabCursor: true,
                        loop: true,
                        
                        onSwiperCreated: function(swiper){
                            $('[data-caption-animate]').each(function(){
                                var $toAnimateElement = $(this);
                                var toAnimateDelay = $(this).attr('data-caption-delay');
                                var toAnimateDelayTime = 0;
                                if( toAnimateDelay ) { toAnimateDelayTime = Number( toAnimateDelay ) + 750; } else { toAnimateDelayTime = 750; }
                                if( !$toAnimateElement.hasClass('animated') ) {
                                    $toAnimateElement.addClass('not-animated');
                                    var elementAnimation = $toAnimateElement.attr('data-caption-animate');
                                    setTimeout(function() {
                                        $toAnimateElement.removeClass('not-animated').addClass( elementAnimation + ' animated');
                                    }, toAnimateDelayTime);
                                }
                            });
                        },
                        onSlideChangeStart: function(swiper){
                            $('#slide-number-current').html(swiper.activeIndex + 1);
                            $('[data-caption-animate]').each(function(){
                                var $toAnimateElement = $(this);
                                var elementAnimation = $toAnimateElement.attr('data-caption-animate');
                                $toAnimateElement.removeClass('animated').removeClass(elementAnimation).addClass('not-animated');
                            });
                        },
                        onSlideChangeEnd: function(swiper){
                            $('#slider .swiper-slide').each(function(){
                                if($(this).find('video').length > 0) { $(this).find('video').get(0).pause(); }
                            });
                            $('#slider .swiper-slide:not(".swiper-slide-active")').each(function(){
                                if($(this).find('video').length > 0) {
                                    if($(this).find('video').get(0).currentTime != 0 ) $(this).find('video').get(0).currentTime = 0;
                                }
                            });
                            if( $('#slider .swiper-slide.swiper-slide-active').find('video').length > 0 ) { $('#slider .swiper-slide.swiper-slide-active').find('video').get(0).play(); }

                            $('#slider .swiper-slide.swiper-slide-active [data-caption-animate]').each(function(){
                                var $toAnimateElement = $(this);
                                var toAnimateDelay = $(this).attr('data-caption-delay');
                                var toAnimateDelayTime = 0;
                                if( toAnimateDelay ) { toAnimateDelayTime = Number( toAnimateDelay ) + 300; } else { toAnimateDelayTime = 300; }
                                if( !$toAnimateElement.hasClass('animated') ) {
                                    $toAnimateElement.addClass('not-animated');
                                    var elementAnimation = $toAnimateElement.attr('data-caption-animate');
                                    setTimeout(function() {
                                        $toAnimateElement.removeClass('not-animated').addClass( elementAnimation + ' animated');
                                    }, toAnimateDelayTime);
                                }
                            });
                        }
                    });

                    $('#slider-arrow-left').on('click', function(e){
                        e.preventDefault();
                        swiperSlider.swipePrev();
                    });

                    $('#slider-arrow-right').on('click', function(e){
                        e.preventDefault();
                        swiperSlider.swipeNext();
                    });

                    $('#slide-number-current').html(swiperSlider.activeIndex + 1);
                    $('#slide-number-total').html(swiperSlider.slides.length);
                });
            </script>

        </section>

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap">


                <div class="container clearfix">
                            
                    <div class="fancy-title title-center title-dotted-border topmargin">
                        <h3>Upcoming Events</h3>
                    </div>                            
                                            
                    <div class="col_full ">

                        <div class="fslider testimonial twitter-scroll" data-animation="slide" data-arrows="false">
                            <div class="flexslider">
                                <div class="slider-wrap">                                          
 	                    
                                	<c:forEach var="item" items="${events}">
		                            <div class="slide">
		                            	<img src="${item['link']}" alt="Slide 3" >
		                            </div>  
                                    </c:forEach>  		                            
		    
		              	                            		                                                             
                                            
                                </div>
                            </div>
                        </div>
                    
                    </div>        

                                                                               
                    
                    <div class="clear"></div>                      
                

                </div>                
                
                <div class="container clearfix">
                            
                    <div class="fancy-title title-center title-dotted-border topmargin">
                        <h3>Promotions and Offers</h3>
                    </div>                            
                                            
                    <div class="col_full ">

                        <div class="fslider testimonial twitter-scroll" data-animation="slide" data-arrows="false">
                            <div class="flexslider">
                                <div class="slider-wrap">                                          
 	                    
                                	<c:forEach var="item" items="${adslist}">
		                            <div class="slide">
		                            	<img src="${item['link']}" alt="Slide 3" >
		                            </div>  
                                    </c:forEach>  		                            
		    
		              	                            		                                                             
                                            
                                </div>
                            </div>
                        </div>
                    
                    </div>        

                                                                               
                    
                    <div class="clear"></div>                      
                

                </div>                    
        
                    
                    <!--  -->                                                

                    <div class="clear"></div>
                    

                </div>

            </div>

        </section><!-- #content end -->