<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

        <section id="prayer-times">
        	<div class="content-wrap">
        		<div class="container clearfix">
        		
        				<div class="news-row-container col_full text-center">
		                    <h4>
		                        <div class="text-rotater text-center" data-separator="|" data-rotate="bounceIn" data-speed="3500">
		                             <span class="news-row t-rotate"> Moon has been sighted. Id Mubarak to all.|Id namaz will be at 9:30 pm inshallah.
		                             Parents please attend
		                             the teachers/parents conference meeting this coming weekend</span>  
		                        </div>
		                    </h4>         				
        				
        				</div>
        				
                    <div class="col_full ">

                        <!-- Testimonials
                        ============================================= -->
                        <div class="fslider testimonial twitter-scroll" data-animation="slide" data-arrows="false">
                            <div class="flexslider">
                                <div class="slider-wrap">
                                    <div class="slide">
                                  
                                        <div class="testi-content text-center">
                                        	
                                            <p class="news-row">The Chicago Hilal Committee will meet on Wednesday, June 17, 2015 (Shaban 29, 1436) to determine the start of Ramadan. 
                                            If the moon is seen on Wednesday, June 17th, Ramadan will begin on Thursday, June 18th. 
                                            If the moon is ..<a href="http://chicagohilal.org/ramadan-1436/" target="_blank">Read More</p>                                            
                                        </div>
                                    </div>                   
                                </div>
                            </div>
                        </div><!-- .testimonial end -->

                    </div>        				
        				
					<div class="clear"></div>
	      
        			<div class="col_four_fifth">
        		
                        <table class="table hidden-xs hidden-sm" id="prayertimegrid1">
                          <thead>
                            <tr>
                              <th></th>
                              <th><h3>Fazar</h3></th>
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
                              <td><h4><span class="subtitle">${dailySchedule.fajarBeginTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.sunriseTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.dhuhrTIme}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.asrTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.maghribTIme}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.ishaTIme}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah1Time}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah2Time}</h4></td>
                            </tr>
                            <tr class="active">
                              <td><h4><span class="subtitle subtitle-font"><strong>Iqama</strong></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.fajarIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle"></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.dhuhrIqamaTIme}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.asrIqamaTIme}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.maghribIqamaTIme}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.ishaIqamaTIme}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah1IqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah2IqamaTime}</span></h4></td>
                            </tr>
                            
                            <!-- 
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
                              <th class="nextprayer"><h3>Fajar</h3></th>           
                              <td><h4><span class="subtitle">${dailySchedule.fajarBeginTime}</span></h4></td>       
                              <td class="success"><h4><span class="subtitle">${dailySchedule.fajarIqamaTime}</span></h4></td>  
                              
                            </tr>
                            <tr>                              
                              <th><h3>Sunrise</h3></th>        
                              <td><h4><span class="subtitle">${dailySchedule.sunriseTime}</h4></td>     
                              <td class="success"><h4><span class="subtitle"></span></h4></td>             
                            </tr>
                            <tr>
                              <th><h3>Dhuhr</h3></th>
                              <td class="nextprayer"><h4><span class="subtitle">${dailySchedule.dhuhrTIme}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.dhuhrIqamaTIme}</span></h4></td>
                            </tr>          
                            <tr>
                              <th><h3>Asr</h3></th>
                              <td><h4><span class="subtitle">${dailySchedule.asrTime}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.asrIqamaTIme}</span></h4></td>
                            </tr>      
                            <tr>
                              <th><h3>Maghrib</h3></th>
                              <td><h4><span class="subtitle">${dailySchedule.maghribTIme}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.maghribIqamaTIme}</span></h4></td>
                            </tr>
                            <tr>
                              <th><h3>Isha</h3></th>
                              <td><h4><span class="subtitle">${dailySchedule.ishaTIme}</h4></td>
                              <td class="success"><h4><span class="subtitle">${dailySchedule.ishaIqamaTIme}</span></h4></td>
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
                        
                        <!-- 
        				<div class="col_full text-right">
        					<div class="col_half">
        						Next prayer: 
        					</div>
        					<div class="col_half col_last divleft">
                        		<div id="countdown-ex3" class="countdown"></div>
                        	</div>       				
        		
        				</div>     
        				
        				 -->                   	
                        
						<script type="text/javascript">
						
						function setPrayerTimes(){
							
							//Central time offset in hours
							var offset = 5;
						    // create Date object for current location						    
						    var now = new Date();
							//get offset relative to the UTC/GMT time
						    var localOffset = now.getTimezoneOffset() * 60000;
							//Convert current time to UTC time by adding the offset
						    var utc = now.getTime() + localOffset;
	
						    // create new Date object for different city using supplied offset						    
						    var currentCST = new Date(utc - (3600000*offset));
						    
						    var cstHour = currentCST.getHours();
						    var cstMinute = currentCST.getMinutes();
						    
						    var prayerTimes = [];
						    
						    now.setHours(0,0,0,0);
						    var year = now.getFullYear(), month = now.getMonth(), day = now.getDate();
						    var strNow = (month+1) + "/" + day + "/" + year;
						    var nextPrayerIndex = 0;
						    var nextPrayerTime, nextPrayerIsIn;
						    $('#prayertimegrid1 tr:eq(2) td').each(function(index, element){						    							    	
						    	var text = $(this).find('span').text();
						    	if(!(index == 0 || index == 2 || (currentCST.getDay() == 5 && index == 3) || (currentCST.getDay() != 5 && (index == 7 || index == 8)) )){
						    		var pd = new Date(strNow + " " + text);
						    		prayerTimes[prayerTimes.length] = pd;
						    	}
						    });
						    
						    prayerTimes.sort();
						    
						    $(prayerTimes).each(function(index, element){										    		
					    		if(this.getTime() > currentCST.getTime()){
					    			nextPrayerIndex = index;
					    			nextPrayerTime = this.getTime();
					    			nextPrayerIsIn = this.getTime() - currentCST.getTime();
					    			return false;
					    		}						    	
						    });
						    
						    //two columns were excluded earlier, so adding +2
						    var tableIndex = 0;
						    var secondTableIndex = 0;
						    
						    if(nextPrayerIndex == 0){
						    	tableIndex = nextPrayerIndex + 1;
						    	secondTableIndex = nextPrayerIndex + 1;
						    } else {
						    	tableIndex = nextPrayerIndex + 2;
						    	tableIndex = nextPrayerIndex + 2;
						    }
						    
						    if(currentCST.getDay() == 5){
						    	
						    	if(nextPrayerIndex == 1 || nextPrayerIndex == 2){
						    		tableIndex = nextPrayerIndex + 6;
						    		secondTableIndex = nextPrayerIndex + 6;
						    	} 
						    }
						    
						    //remove current high lighted prayer in table 1
						    $('#prayertimegrid1 tr th').removeClass("nextprayer");
						    $('#prayertimegrid1 tr td').removeClass("nextprayer");
						    						    
						    //apply css to the next prayer in table 1
						    $('#prayertimegrid1 tr:eq(0) th:eq('+tableIndex+")").addClass("nextprayer");
						    $('#prayertimegrid1 tr:eq(1) td:eq('+tableIndex+")").addClass("nextprayer");
						    $('#prayertimegrid1 tr:eq(2) td:eq('+tableIndex+")").addClass("nextprayer");	
						    
						    //remove current high lighted prayer in table 2
						    $('#prayertimegrid2 tr th').removeClass("nextprayer");
						    $('#prayertimegrid2 tr td').removeClass("nextprayer");	
						    
						    //$('#prayertimegrid2 tr:eq(0) th').addClass("nextprayer");
						    
						    //apply css to the next prayer in table 2
						    $('#prayertimegrid2 tr:eq('+secondTableIndex+") th").addClass("nextprayer");
						    $('#prayertimegrid2 tr:eq('+secondTableIndex+") td").addClass("nextprayer");					
						    
                            var newDate = new Date(nextPrayerTime);
                            $('#countdown-ex3').countdown({until: newDate});
                            $('#countdown-ex2').countdown({until: newDate});
						    						    						    
						    return nextPrayerIsIn;
							
						}
						
						$(document).ready(function(){														
							
							var nextPrayerInTime = setPrayerTimes();
							setTimeout(function(){setPrayerTimes()},nextPrayerInTime);
					    
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

        <section id="slider" class="slider-parallax swiper_wrapper clearfix">

            <div class="swiper-container swiper-parent">
                <div class="swiper-wrapper">
                    <div class="swiper-slide dark" style="background-image: url('<spring:eval expression="@environment.getProperty('alhuda.images')" />al-new-model2.jpg');">
                        <div class="container clearfix">
                            <div class="slider-caption slider-caption-center">
                                <h2 data-caption-animate="fadeInUp">Masjid Al Huda Expansion</h2>
                                <p data-caption-animate="fadeInUp" data-caption-delay="200">Please support the masjid project &amp; school construction projects for building a better community.</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide dark" style="background-image: url('<spring:eval expression="@environment.getProperty('alhuda.images')" />al-new-model3.jpg');">
                        <div class="container clearfix">
                            <div class="slider-caption slider-caption-center">
                                <h2 data-caption-animate="fadeInUp"></h2>
                                <p data-caption-animate="fadeInUp" data-caption-delay="200"></p> 
                            </div>
                        </div>
                    </div>               
                    <div class="swiper-slide dark" style="background-image: url('<spring:eval expression="@environment.getProperty('alhuda.images')" />al-new-model4.jpg');">
                        <div class="container clearfix">
                            <div class="slider-caption slider-caption-center">
                                <h2 data-caption-animate="fadeInUp"></h2>
                                <p data-caption-animate="fadeInUp" data-caption-delay="200"></p> 
                            </div>
                        </div>
                    </div>         
                    <div class="swiper-slide dark" style="background-image: url('<spring:eval expression="@environment.getProperty('alhuda.images')" />al-new-model6.jpg');">
                        <div class="container clearfix">
                            <div class="slider-caption slider-caption-center">
                                <h2 data-caption-animate="fadeInUp">Support The Noble Cause</h2>
                                <p data-caption-animate="fadeInUp" data-caption-delay="200">Masjid Alhuda Expansion Project</p> 
                            </div>
                        </div>
                    </div>                        
                    <div class="swiper-slide dark" style="background-image: url('<spring:eval expression="@environment.getProperty('alhuda.images')" />al-new-model5.jpg');">
                        <div class="container clearfix">
                            <div class="slider-caption slider-caption-center">
                                <h2 data-caption-animate="fadeInUp"></h2>
                                <p data-caption-animate="fadeInUp" data-caption-delay="200"></p> 
                            </div>
                        </div>
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
                        <h3>Featured Videos</h3>
                    </div>                 
                
                    <!-- Portfolio Items
                    ============================================= -->
                    <div id="portfolio" class="portfolio-2 clearfix">


                        <article class="portfolio-item pf-graphics pf-uielements">
                            <div class="portfolio-image">
                                <a href="#">
                                    <iframe width="800" height="600" src="https://www.youtube.com/embed/9dBUEfoLsg0?rel=0" frameborder="0" allowfullscreen></iframe>
                                </a>

                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single-video.html">Passionate Message</a></h3>
                                <span>Alhuda Co Founders</span>
                            </div>
                        </article>

                        <article class="portfolio-item pf-graphics pf-uielements">
                            <div class="portfolio-image">
                                <a href="#">                                    
                                    <iframe width="800" height="600" src="https://www.youtube.com/embed/X1iIK9VBoVY?rel=0" frameborder="0" allowfullscreen></iframe>
                                </a>

                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single-video.html">Masjid Alhuda Expansion Project</a></h3>
                                <span>Virtual Tour</span>
                            </div>
                        </article>

                    </div><!-- #portfolio end -->

                    <!-- Portfolio Script
                    ============================================= -->
                    <script type="text/javascript">

                        jQuery(window).load(function(){

                            var $container = $('#portfolio');

                            $container.isotope({ transitionDuration: '0.65s' });

                            $('#portfolio-filter a').click(function(){
                                $('#portfolio-filter li').removeClass('activeFilter');
                                $(this).parent('li').addClass('activeFilter');
                                var selector = $(this).attr('data-filter');
                                $container.isotope({ filter: selector });
                                return false;
                            });

                            $('#portfolio-shuffle').click(function(){
                                $container.isotope('updateSortData').isotope({
                                    sortBy: 'random'
                                });
                            });

                            $(window).resize(function() {
                                $container.isotope('layout');
                            });

                        });

                    </script><!-- Portfolio Script End -->                                                                                     
                    
                    <div class="clear"></div>                      
                

                </div>                          
                    
                    <script type="text/javascript">

                        jQuery(document).ready(function($) {

                            var ocEvents = $("#oc-events");

                            ocEvents.owlCarousel({
                                margin: 20,
                                nav: true,
                                navText: ['<i class="icon-angle-left"></i>','<i class="icon-angle-right"></i>'],
                                autoplay: true,
                                autoplayHoverPause: true,
                                dots: true,
                                responsive:{
                                    0:{ items:1 },
                                    1000:{ items:1 }
                                }
                            });

                        });

                    </script>                                                           

                    <div class="clear"></div>
                    

                </div>

            </div>

        </section><!-- #content end -->