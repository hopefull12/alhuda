		<!-- Slider
		============================================= -->
        <section id="slider" class="slider-parallax swiper_wrapper full-screen clearfix">

            <div class="swiper-container swiper-parent">
                <div class="swiper-wrapper">
                    <div class="swiper-slide dark" style="background-image: url('images/alhuda/ss-bg.jpg');">
                        <div class="container clearfix">
                            <div class="slider-caption slider-caption-center uppercase slider-caption-bottom-right">
                                <h2 data-caption-animate="fadeInUp">Al-Huda <br> Sunday School</h2>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="slider-arrow-left"><i class="icon-angle-left"></i></div>
                <div id="slider-arrow-right"><i class="icon-angle-right"></i></div>
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
                            SEMICOLON.slider.swiperSliderMenu();
                        },
                        onSlideChangeStart: function(swiper){
                            $('[data-caption-animate]').each(function(){
                                var $toAnimateElement = $(this);
                                var elementAnimation = $toAnimateElement.attr('data-caption-animate');
                                $toAnimateElement.removeClass('animated').removeClass(elementAnimation).addClass('not-animated');
                            });
                            SEMICOLON.slider.swiperSliderMenu();
                        },
                        onSlideChangeEnd: function(swiper){
                            $('#slider').find('.swiper-slide').each(function(){
                                if($(this).find('video').length > 0) { $(this).find('video').get(0).pause(); }
                                if($(this).find('.yt-bg-player').length > 0) { $(this).find('.yt-bg-player').pauseYTP(); }
                            });
                            $('#slider').find('.swiper-slide:not(".swiper-slide-active")').each(function(){
                                if($(this).find('video').length > 0) {
                                    if($(this).find('video').get(0).currentTime != 0 ) $(this).find('video').get(0).currentTime = 0;
                                }
                                if($(this).find('.yt-bg-player').length > 0) {
                                    $(this).find('.yt-bg-player').getPlayer().seekTo( $(this).find('.yt-bg-player').attr('data-start') );
                                }
                            });
                            if( $('#slider').find('.swiper-slide.swiper-slide-active').find('video').length > 0 ) { $('#slider').find('.swiper-slide.swiper-slide-active').find('video').get(0).play(); }
                            if( $('#slider').find('.swiper-slide.swiper-slide-active').find('.yt-bg-player').length > 0 ) { $('#slider').find('.swiper-slide.swiper-slide-active').find('.yt-bg-player').playYTP(); }

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
                });
            </script>

        </section>

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap nopadding">

				<div id="section-about" class="center page-section">

					<div class="container clearfix">
					
						
						<div id="school-schedule" class="divcenter">
							<h2 class="divcenter bottommargin font-body" style="max-width: 700px; font-size: 40px;">Sunday Schedule</h2>
							
	                        <table class="table table-striped">
	                          <thead>
	                            <tr>
	                              <th>Time</th>
	                              <th>Period</th>
	                            </tr>
	                          </thead>
	                          <tbody>
	                            <tr>
	                              <td>10:15-11:15</td>
	                              <td>First Period</td>
	                            </tr>
	                            <tr>
	                              <td>11:15- 12:15</td>
	                              <td>Second Period</td>                    
	                            </tr>
	                            <tr>
	                              <td>12:15-12:30</td>
	                              <td>Snack Break</td>
	                            </tr>
	                            <tr>
	                              <td>12:30-1:15</td>
	                              <td>Third Period</td>                    
	                            </tr>
	                            <tr>
	                              <td>1:15</td>
	                              <td>Group Adhan/Dua</td>
	                            </tr>
	                            <tr>
	                              <td>1:30</td>
	                              <td>Dhuhr/Dismissal</td>                    
	                            </tr>	                            	       
	                          </tbody>
                        	</table>
                        </div>			
	                        
	                    <div class="clear"></div>		
	                    
						<div class="section blue nomargin">
							<div class="row topmargin-lg divcenter" >
							
								<div class="col-sm-4 bottommargin ss-announcements">
									<h2>Announcements</h2>
									<a href="http://www.masjidalhuda.org/ptPDFFiles/Registrationform2014-2015.pdf" target="_blank">Registration Form</a>
									<a  href="#">Sunday School Volunteer Form</a>
									<p><span class="note">(Please do not leave registration form in the masjid office. Please fine Sunday School admin or email schooladmin1@alhudasundayschool.org
	if you need to register your child for the next term.)</span></p>
								</div>
								
								<div class="col-sm-4 bottommargin">
									<h2>School Starts</h2>
									<p>Sunday, September 13th, 2015 <br>
										<span class="note">10:15 am - 1:30 pm</span>
									</p>
								</div>
								
								<div class="col-sm-4 bottommargin">
									<h2>Fee Schedule</h2>
									<p>Tuition fees, in full, must accompany the application for registration. Application forms must be fully completed and signed by parent / guardian.</p>
									<p>Tuition Fees for the Year 2015-2016 : $370 <br>
										<span class="note"><a></a></span>
									</p>
								</div>														
							
							</div>
						</div>			
						
						<div class="clear"></div>		                    

					</div>

				</div>

				<div id="section-works" class="page-section notoppadding">
				
					<div class="divcenter center" >
						<h2 class="divcenter bottommargin font-body" style="max-width: 700px; font-size: 40px;">About Us</h2>
				
						<p class="lead divcenter bottommargin" >Welcome to the Sunday Islamic School at Masjid Al-Huda. Located in Schaumburg, Illinois, the school provides education in 
						Islamic studies to students from Pre-Kindergarten through the 10th Grade.</p>
						
						<p class="lead divcenter bottommargin" >Established in 2005, our Sunday Islamic School at Masjid Al-Huda is committed to providing education in a caring and Islamic
environment for the children in the Muslim Community.
We have about 45 highly dedicated teachers and staff members, teaching over 300 students on Sundays. We'd love for your child
to be a part of it as well!</p>		
					</div>	
					
					<div class="section nomargin">
						<div class="container clearfix">
							<div class="divcenter center" >
				                <div class="col-md-12 nopadding common-height">
				
				                    <div class="col-md-6 dark col-padding ohidden" style="background-color: #1abc9c;">
				                        <div>
				                            <h3 class="uppercase" style="font-weight: 600;">Our Mission</h3>
				                            <p style="line-height: 1.8;">The mission of the Sunday Islamic School at Masjid Al-Huda is to provide students with an environment that promotes
		Islamic values and their integration into all aspects of life. The school joins the parents and community to assist the students in
		developing self-esteem, confidence and to become responsible and contributing members of both the Islamic community and the
		global society.	</p>
				                            
				                            <i class="icon-bulb bgicon"></i>
				                        </div>
				                    </div>
				
				                    <div class="col-md-6 dark col-padding ohidden" style="background-color: #e74c3c;">
				                        <div>
				                            <h3 class="uppercase" style="font-weight: 600;">Our Goal</h3>
				                            <p style="line-height: 1.8;">To facilitate students' learning of Islamic history, beliefs, morals and jurisprudence. Provide instruction for students in recitation of Quran by familiarizing them with Arabic script and recitation rules; promote
		understanding of Quranic Arabic by focusing on key, repetitive vocabulary; practice memorization of chapters from the Quran. Help students to connect with, and hopefully create a lifetime relationship with, the Quran and Ahlulbayt by illuminating how
		their teachings apply to daily life. Utilize modern teaching strategies and techniques to help students achieve attainable goals in understanding Islamic teachings
		and implementing them into their lives. </p>
				                            
				                            <i class="icon-thumbs-up bgicon"></i>
				                        </div>
				                    </div>
				
				                    <div class="clear"></div>
				
				                </div> 
							</div>
						</div>
					</div>						
					
					<div class="clear"></div>
								
					<div class="section nomargin">
						<div class="container clearfix">
							<div class="divcenter center" >
								<h2>Islamic Studies subjects include:</h2>
								<ul id="ss-subjects">
									<li><h2 class="nobottommargin t300 ls1">Basic Arabic</h2></li>
									<li><h2 class="nobottommargin t300 ls1">Quran reading/recitation and memorization</h2></li>
									<li><h2 class="nobottommargin t300 ls1">Tawheed and Aqeedah</h2></li>
									<li><h2 class="nobottommargin t300 ls1">Essentials and Practices (Fiqh)</h2></li>
									<li><h2 class="nobottommargin t300 ls1">Islamic History</h2></li>
									<li><h2 class="nobottommargin t300 ls1">Islamic Akhlaq</h2></li>
								</ul>
								
							</div>
						</div>
					</div>	
		
					<div class="clear"></div>				

				</div>

				<div id="section-services" class="center page-section notoppadding">
				
					<div class="section blue nomargin">
					
						<h2 class="divcenter bottommargin font-body" style="max-width: 700px; font-size: 40px;">Faculty</h2>
						<div class="row topmargin-lg divcenter" >
						
							<div class="col-sm-4 bottommargin ss-announcements">
								<h2>Br. Nazir Razvi	</h2>						
								<p>Have been teaching Quranic Tafseer for over 25 years at various Islamic Schools including Islamic Foundation (15 years). 
								Have been a student of Shaikh Mohammad Amin Always striving to impart to the students a sense of the 'Spiritual' and a deeper 
								understanding of their own humanity and a realization of their relationship with Allah (swt)..</p>
							</div>
							
							<div class="col-sm-4 bottommargin">
								<h2>Br. Mujahed Khan</h2>
								<p>I teach 4th grade Islamic Studies at Masjid Al Huda Sunday School. I am currently studying at Benedictine 
								University to be a nutritionist. Insha'Allah, after achieving my degree; I would like to further continue my education 
								in Islamic Studies. This is my third year teaching at the Weekend School and I have found this experience very 
								rewarding. May Allah (swt) bless us all for our efforts.
								</p>
							</div>
							
							<div class="col-sm-4 bottommargin">
								<h2>Br. Azghar Ahmed</h2>
								<p>I am teaching the sixth grade for Islamic Studies and memorization. Professionally, I am a software developer and I have recently joined the Alim course to further my knowledge of this great religion.</p>							
							</div>														
						
						</div>
						
						<div class="row topmargin-lg divcenter" >
						
							<div class="col-sm-4 bottommargin ss-announcements">
								<h2>Naseem Akhtar	</h2>						
								<p>I live in Schaumburg for the last 40 years, married and have three kids. A daughter and two sons MashaAllah. I am a 
								grandmother of three, A granddaughter and two grandsons. I work in Westfield Middle School  as a Para Pro with Special 
								needs kids in School Distric 13. This is my second year working in Sunday School. It is really a pleasure and blessing 
								that Allah (swt) gave me opportunity to be with these children and help them in there learning as a member of the of 
								the Community. I hope I was helpful to the School and the children.</p>
							</div>
							
							<div class="col-sm-4 bottommargin">
								<h2>Naheed Mir</h2>
								<p>I teach Quran Memorization for Grade 5th 4th and 1st and pre K. I am teaching Sunday school for more then 20 Years. 
								I taught in MSI, Villa park school in the beginning. My Goal is teach kids to understand quran with meaning. I love to 
								teach young children. I also work with community. Provide Support Groups, Family counseling with the help of expert 
								staff. DV support group. Organize program in the masjid.
								</p>
							</div>
							
							<div class="col-sm-4 bottommargin">
								<h2>Br. Azghar Ahmed</h2>
								<p>I am teaching the sixth grade for Islamic Studies and memorization. Professionally, I am a software developer and I have recently joined the Alim course to further my knowledge of this great religion.</p>							
							</div>														
						
						</div>						
					</div>					

				</div>

				<div id="section-contact" class="center page-section notoppadding">

					<h2 class="divcenter bottommargin font-body" style="max-width: 700px; font-size: 40px;">Contact Us</h2>
					<div class="row noleftmargin norightmargin bottommargin-lg common-height">
						<div id="headquarters-map" class="col-md-8 col-sm-6 gmap hidden-xs"></div>
						<div class="col-md-4 col-sm-6" style="background-color: #F5F5F5;">
							<div class="col-padding max-height">
								<h3 class="font-body t400 ls1">Our Headquarters</h3>

								<div style="font-size: 16px; line-height: 1.7;">
									<p>
										Feel free to visit us at your convenience. We would love for you to meet our faculty & staff members. 
										Take a tour of our facility and get a feel of our Islamic environment. The Campus is open on Sundays during 
										the September-May School Year.																		
									</p>

									<div class="clear topmargin-sm"></div>

									<address style="line-height: 1.7;">
										<strong>Address:</strong><br>
										1081 Irving Park Road<br>
										Schaumburg, IL 60193<br>
									</address>

									<div class="clear topmargin"></div>

									<abbr title="Phone Number"><strong>Phone:</strong></abbr> (630) 529 1365<br>
									<abbr title="Email Address"><strong>Email 1:</strong></abbr>  info.school@masjidalhuda.org<br>
									<abbr title="Email Address"><strong>Email 2:</strong></abbr>  schooladmin1@alhudaSundaySchool.org
								</div>
							</div>
						</div>
					</div>

					<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
					<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.gmap.js"></script>

					<script type="text/javascript">

						jQuery(window).load( function(){
							jQuery('#headquarters-map').gMap({
								address: 'Schaumburg, IL',
								maptype: 'ROADMAP',
								zoom: 14,
								markers: [
									{
										address: "Schaumburg, IL",
										html: "Schaumburg, IL",
										icon: {
											image: "images/icons/map-icon-red.png",
											iconsize: [32, 32],
											iconanchor: [14,44]
										}
									}
								],
								doubleclickzoom: false,
								controls: {
									panControl: false,
									zoomControl: false,
									mapTypeControl: false,
									scaleControl: false,
									streetViewControl: false,
									overviewMapControl: false
								},
								styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"administrative","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"administrative.country","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.country","elementType":"geometry","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.country","elementType":"labels.text","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.province","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative.locality","elementType":"all","stylers":[{"visibility":"simplified"},{"saturation":"-100"},{"lightness":"30"}]},{"featureType":"administrative.neighborhood","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative.land_parcel","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"all","stylers":[{"visibility":"simplified"},{"gamma":"0.00"},{"lightness":"74"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"landscape.man_made","elementType":"all","stylers":[{"lightness":"3"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road","elementType":"geometry","stylers":[{"visibility":"simplified"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
							});
						});

					</script>

				</div>

			</div>

		</section><!-- #content end -->
