<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

    <!-- Stylesheets
    ============================================= -->
	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" href="css/dark.css" type="text/css" />
    <link rel="stylesheet" href="css/font-icons.css" type="text/css" />
    <link rel="stylesheet" href="css/animate.css" type="text/css" />
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />

    <link rel="stylesheet" href="css/responsive.css" type="text/css" />
    
    <link rel="stylesheet" href="css/alhuda.css" type="text/css" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

    <!-- External JavaScripts
    ============================================= -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>
	
	<script type="text/javascript" src="js/player.js"></script>

    <!-- Document Title
    ============================================= -->
	<title>Masjid Al Huda Home</title>

</head>

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

        <!-- Header
        ============================================= -->
        <header id="header" class="full-header">

            <div id="header-wrap">

                <div class="container clearfix">

                    <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

                    <!-- Logo
                    ============================================= -->
                    <div id="logo">
                        <a href="main.html" class="standard-logo" data-dark-logo="images/logo-dark.png"><img src="images/alhuda/logo1.png" alt="AlHuda Logo"></a>
                        <a href="main.html" class="retina-logo" data-dark-logo="images/logo-dark@2x.png"><img src="images/alhuda/logo1.png" alt="AlHuda Logo"></a>
                    </div><!-- #logo end -->

                    <!-- Primary Navigation
                    ============================================= -->
                    <nav id="primary-menu">

                        <ul>
                            <li class="current"><a href="main.html"><div>Home</div></a>
                            </li>
                            <li><a href="#"><div>About Us</div></a>
                                <ul>
                                    <li><a href="#"><div>Board of Turstees</div></a>

                                    </li>
                                    <li><a href="#"><div>Masjid Expansion</div></a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#"><div>Media</div></a>
                                <ul>
                                    <li><a href="#"><div>Audio Library</div></a>

                                    </li>
                                    <li><a href="videos.html"><div>Video Library</div></a>
                                    </li>
                                </ul>
                            </li>                            
                            <li><a href="#"><div>Prayer Times</div></a>
                            </li>      
                            <li><a href="donate.html"><div>Donations</div></a>
                            </li> 
                            <li><a href="events.html"><div>Events</div></a>
                            </li>       
                            <li><a href="#"><div>Schools</div></a>
                                <ul>
                                    <li><a href="http://sites.alhudaacademy.com/alhudamain/"><div>Fulltime School</div></a>

                                    </li>
                                    <li><a href="#"><div>Sunday School</div></a>
                                    </li>
                                    <li><a href="#"><div>Hifz &amp; Nazara School</div></a>
                                    </li>                                    
                                </ul>
                            </li>
                            <li><a href="#"><div>Contact Us</div></a>
                            </li>                            
                        </ul>

                    </nav><!-- #primary-menu end -->

                </div>

            </div>

        </header><!-- #header end -->
        
        <section id="prayer-times">
        	<div class="content-wrap">
        		<div class="container clearfix">
        		
        				<div class="news-row-container col_full text-center">
		                    <h4>
		                        <div class="text-rotater text-center" data-separator="|" data-rotate="bounceIn" data-speed="3500">
		                             <span class="news-row t-rotate"> Moon has been sighted. Id Mubarak to all.|Id namaz will be at 9:30 pm inshallah|Parents please attend
		                             the teachers/parents conference meeting this coming weekend</span>  
		                        </div>
		                    </h4>         				
        				
        				</div>
        				
        			    				
        		
        		<div class="col_one_fifth ">
        		
        		               		
        		
        		</div>
        		<div class="col_three_fifth ">
        		
                        <table class="table hidden-xs hidden-sm" id="prayertimegrid1">
                          <thead>
                            <tr>
                              <th></th>
                              <th><h3>Fajar</h3></th>
                              <th><h3>Sunrise</h3></th>
                              <th class="nextprayer"><h3>Dhuhr</h3></th>
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
                              <td><h4><span class="subtitle">${dailySchedule.fajarIqamaTime}</h4></td>
                              <td class="nextprayer"><h4><span class="subtitle">12:150 PM</h4></td>
                              <td><h4><span class="subtitle">5:44 PM</h4></td>
                              <td><h4><span class="subtitle">7:48 PM</h4></td>
                              <td><h4><span class="subtitle">9:14 PM</h4></td>
                              <td><h4><span class="subtitle">12:00 PM</h4></td>
                              <td><h4><span class="subtitle">1:00 PM</h4></td>
                            </tr>
                            <tr class="active">
                              <td><h4><span class="subtitle subtitle-font"><strong>Iqama</strong></span></h4></td>
                              <td><h4><span class="subtitle">5:15 AM</span></h4></td>
                              <td><h4><span class="subtitle">5:15 AM</span></h4></td>
                              <td class="nextprayer"><h4><span class="subtitle">1:30 PM</span></h4></td>
                              <td><h4><span class="subtitle">6:00 PM</span></h4></td>
                              <td><h4><span class="subtitle">7:48 PM</span></h4></td>
                              <td><h4><span class="subtitle">9:40 PM</span></h4></td>
                              <td><h4><span class="subtitle">12:30 PM</span></h4></td>
                              <td><h4><span class="subtitle">1:30 PM</span></h4></td>
                            </tr>
                          </tbody>
                        </table>                                       
        		
       		
                        <table class="table hidden-md hidden-lg" id="prayertimegrid2">
                            <tr>
                              <th></th>
                              <td><h4><span class="subtitle"><strong>Begins</strong></span></h4></td>
                              <td class="success"><h4><span class="subtitle"><strong>Iqama</strong></span></h4></td>                              
                            </tr>
                            <tr>                             
                              <th><h3>Fajar</h3></th>           
                              <td><h4><span class="subtitle">${dailySchedule.fajarBeginTime}</span></h4></td>       
                              <td class="success"><h4><span class="subtitle">5:16 AM</span></h4></td>  
                              
                            </tr>
                            <tr>                              
                              <th><h3>Sunrise</h3></th>        
                              <td><h4><span class="subtitle">5:53 AM</h4></td>     
                              <td class="success"><h4><span class="subtitle">5:15 AM</span></h4></td>             
                            </tr>
                            <tr>
                              <th><h3>Dhuhr</h3></th>
                              <td><h4><span class="subtitle">12:150 PM</h4></td>
                              <td class="success"><h4><span class="subtitle">1:30 PM</span></h4></td>
                            </tr>          
                            <tr>
                              <th><h3>Asr</h3></th>
                              <td><h4><span class="subtitle">5:44 PM</h4></td>
                              <td class="success"><h4><span class="subtitle">6:00 PM</span></h4></td>
                            </tr>      
                            <tr>
                              <th><h3>Maghrib</h3></th>
                              <td><h4><span class="subtitle">7:48 PM</h4></td>
                              <td class="success"><h4><span class="subtitle">7:48 PM</span></h4></td>
                            </tr>
                            <tr>
                              <th><h3>Isha</h3></th>
                              <td><h4><span class="subtitle">9:14 PM</h4></td>
                              <td class="success"><h4><span class="subtitle">9:40 PM</span></h4></td>
                            </tr>                   
                            <tr>
                              <th><h3>Jumah 1</h3></th>
                              <td><h4><span class="subtitle">12:00 PM</h4></td>
                              <td class="success"><h4><span class="subtitle">12:30 PM</span></h4></td>
                            </tr>  
                            <tr>
                              <th><h3>Jumah 2</h3></th>
                              <td><h4><span class="subtitle">1:00 PM</h4></td>
                              <td class="success"><h4><span class="subtitle">1:30 PM</span></h4></td>
                            </tr>                              
                        </table>          		
       		      		
					</div>
					<div class="col_one_fifth col_last">
		
						
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
															
						<div class="divcenter">
							<a href="donate.html">
								<img alt="" src="images/alhuda/Paypal1.png">
							</a>
						</div>					
					</div>

       		
        			<div class="clear"></div>
        		</div>
        	</div>
        </section>

        <section id="slider" class="slider-parallax swiper_wrapper clearfix">

            <div class="swiper-container swiper-parent">
                <div class="swiper-wrapper">
                    <div class="swiper-slide dark" style="background-image: url('images/alhuda/h1.jpeg');">
                        <div class="container clearfix">
                            <div class="slider-caption slider-caption-center">
                                <h2 data-caption-animate="fadeInUp">Masjid Al Huda Expansion</h2>
                                <p data-caption-animate="fadeInUp" data-caption-delay="200">Please support the masjid project &amp; school construction projects for building a better community.</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide dark">
                        <div class="container clearfix">
                            <div class="slider-caption slider-caption-center">
                                <h2 data-caption-animate="fadeInUp">Summer Camp 2015</h2>
                                <p data-caption-animate="fadeInUp" data-caption-delay="200">Make the most of summer! Summer camps provide kids with the opportunity to do something they love or try something new!</p>
                            </div>
                        </div>
                        <div class="video-wrap">
                            <video poster="images/videos/explore-poster.jpg" preload="auto" loop autoplay muted>
                                <source src='images/videos/explore.mp4' type='video/mp4' />
                                <source src='images/videos/explore.webm' type='video/webm' />
                            </video>
                            <div class="video-overlay" style="background-color: rgba(0,0,0,0.55);"></div>
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
                
                <div class="col_half">
                
                    <div class="fancy-title title-center title-dotted-border topmargin">
                        <h3>Upcoming Events</h3>
                    </div>
                    
					<div id="oc-events" class="owl-carousel events-carousel">

                        <div class="oc-item">
                            <div class="ievent clearfix">
                                <div class="entry-image">
                                    <a href="#">
                                        <img src="images/alhuda/e1.jpg" alt="Inventore voluptates velit totam ipsa">
                                        <div class="entry-date">11<span>June</span></div>
                                    </a>
                                </div>
                                <div class="entry-c">
                                    <div class="entry-title">
                                        <h2><a href="#">Seerah of the Prophet (SAW)</a></h2> <h3>by Mufti Abdul Hannan Nizami<h3>
                                    </div>
                                    <ul class="entry-meta clearfix">
                                        <li><span class="label label-warning">No Kids</span></li>
                                        <li><a href="#"><i class="icon-time"></i> 11:00 - 19:00</a></li>
                                        <li><a href="#"><i class="icon-map-marker2"></i> Schaumburg</a></li>
                                    </ul>
                                    <div class="entry-content">
                                        <p>This program will be held on the fourth friday of every month inshallah after isha.</p>                                        
                                    </div>                           
                                </div>
                            </div>
                        </div>
                        <div class="oc-item">                      
                            <div class="ievent clearfix">
                                <div class="entry-image">
                                    <a href="#">
                                        <img src="images/alhuda/e2.jpg" alt="Nemo quaerat nam beatae iusto">
                                        <div class="entry-date">16<span>June</span></div>
                                    </a>
                                </div>
                                <div class="entry-c">
                                    <div class="entry-title">
                                        <h2><a href="#">Building Beautiful Minds</a></h2> <h3>by Brother Naseer Aziz<h3>
                                    </div>
                                    <ul class="entry-meta clearfix">                                        
                                        <li><a href="#"><i class="icon-time"></i> 11:00 - 19:00</a></li>
                                        <li><a href="#"><i class="icon-map-marker2"></i> Arlington Hights</a></li>
                                    </ul>   
                                    <div class="entry-content">
                                        <p>This program will be held on the fourth friday of every month inshallah after isha.</p>                                        
                                    </div>                                                               
                                </div>
                            </div>
                        </div>

                        <div class="oc-item">
                            <div class="ievent clearfix">
                                <div class="entry-image">
                                    <a href="#">
                                        <img src="images/alhuda/e3.jpg" alt="Ducimus ipsam error fugiat harum">
                                        <div class="entry-date">3<span>July</span></div>
                                    </a>
                                </div>
                                <div class="entry-c">
                                    <div class="entry-title">
                                        <h2><a href="#">Akhlaq</a></h2> <h3>by Mufti Nizami<h3>
                                    </div>
                                    <ul class="entry-meta clearfix">
                                        <li><span class="label label-info">Public</span></li>
                                        <li><a href="#"><i class="icon-time"></i> 11:00 - 19:00</a></li>
                                        <li><a href="#"><i class="icon-map-marker2"></i> Chicago</a></li>
                                    </ul>      
                                    <div class="entry-content">
                                        <p>Inshallah this program focuses on building beautiful minds by design. Beautiful minds by several factors learn to give by
                                        caring and sharing.</p>                                        
                                    </div>                                                           
                                </div>
                            </div>
                        </div>
                        <div class="oc-item">                             

                            <div class="ievent clearfix">
                                <div class="entry-image">
                                    <a href="#">
                                        <img src="images/alhuda/e4.jpg" alt="Nisi officia adipisci molestiae aliquam">
                                        <div class="entry-date">19<span>July</span></div>
                                    </a>
                                </div>
                                <div class="entry-c">
                                    <div class="entry-title">
                                        <h2><a href="#">Jumuah</a></h2> <h3>by Brother Suhaib Quadroi<h3>
                                    </div>
                                    <ul class="entry-meta clearfix">                                        
                                        <li><a href="#"><i class="icon-time"></i> 12:00 - 18:00</a></li>
                                        <li><a href="#"><i class="icon-map-marker2"></i> Bloomington</a></li>
                                    </ul>     
                                    <div class="entry-content">
                                        <p>Inshallah this series will focus of proper propogation and representation of Islam through Character in family, business and social interactions.</p>                                        
                                    </div>                                                                
                                </div>
                            </div>
                        </div>

                    </div>
                    
                    </div>
                    <div class="col_half col_last">
                    
	                    <div class="fancy-title title-center title-dotted-border topmargin">
	                        <h3>Masjid Alhuda Live</h3>
	                    </div>                    
	                    
	                    <div class="text-center">
                    	<iframe src="http://www.ustream.tv/embed/11240281" width="500" height="250" scrolling="no" frameborder="0" style="border: 0px none transparent;"></iframe>
                    	</div> 
                    </div>
                    
                    <div class="clear"></div>
                    
                    <div class="col_half">
                    
	                    <div class="fancy-title title-center title-dotted-border topmargin">
	                        <h3>Upcoming Events</h3>
	                    </div>                    
	                    
                                <div class="fslider" data-arrows="false" data-speed="400" data-pause="4000">
                                    <div class="flexslider">
                                        <div class="slider-wrap">
                                            <div class="slide"><a href="event.html"><img src="images/alhuda/e1.jpg" alt="Morning Dew"></a></div>
                                            <div class="slide"><a href="event.html"><img src="images/alhuda/e2.jpg" alt="Morning Dew"></a></div>
                                            <div class="slide"><a href="event.html"><img src="images/alhuda/e3.jpg" alt="Morning Dew"></a></div>
                                            <div class="slide"><a href="event.html"><img src="images/alhuda/e4.jpg" alt="Morning Dew"></a></div>
                                            
                                        </div>
                                    </div>
                                </div> 
                    </div>
                    
                    <div class="col_half col_last">
                    
	                    <div class="fancy-title title-center title-dotted-border topmargin">
	                        <h3>Masjid Alhuda Live</h3>
	                    </div>                    
	                    
	                    <div class="text-center">
                    	<iframe src="http://www.ustream.tv/embed/11240281" width="500" height="350" scrolling="no" frameborder="0" style="border: 0px none transparent;"></iframe>
                    	</div> 
                    </div>                                        
                    
                    <div class="clear"></div>            
                    
                    
                    <div class="fancy-title title-center title-dotted-border topmargin">
                        <h3>Latest Videos</h3>
                    </div>                    
                    
                    <div id="portfolio" class="clearfix">

                        <article class="portfolio-item pf-media pf-icons">
                            <div class="portfolio-image">
								<iframe width="276" height="207" src="https://www.youtube.com/embed/fAaLGOm8jyU" frameborder="0" allowfullscreen></iframe>
                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single.html">Structure of Masjid</a></h3>
                                <span>5/17/2015</span>
                            </div>
                        </article>

                        <article class="portfolio-item pf-icons pf-illustrations">
                            <div class="portfolio-image">
								<iframe width="276" height="207" src="https://www.youtube.com/embed/9dBUEfoLsg0" frameborder="0" allowfullscreen></iframe>
                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single-video.html">Passionate Message from the Founders of Masjid</a></h3>
                                <span>5/17/2015</span>
                            </div>
                        </article>

                        <article class="portfolio-item pf-media pf-icons">
                            <div class="portfolio-image">
								<iframe width="276" height="207" src="https://www.youtube.com/embed/fAaLGOm8jyU" frameborder="0" allowfullscreen></iframe>
                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single.html">Structure of Masjid</a></h3>
                                <span>5/12/2015</span>
                            </div>
                        </article>

                        <article class="portfolio-item pf-icons pf-illustrations">
                            <div class="portfolio-image">
								<iframe width="276" height="207" src="https://www.youtube.com/embed/9dBUEfoLsg0" frameborder="0" allowfullscreen></iframe>
                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single-video.html">Passionate Message from the Founders of Masjid</a></h3>
                                <span>5/2/2015</span>
                            </div>
                        </article>                
                
                </div>         
                
                <div class="fancy-title title-center title-dotted-border topmargin">
                    <h3>Latest Audio</h3>
                </div>                  
                
                <div id="portfolio" class="clearfix">

                        <article class="portfolio-item pf-media pf-icons">
                            <div class="portfolio-audio">
								<audio preload="auto" id="id12" controls="controls" src="client/audio/NamesofAllah.mp3"></audio>								
                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single.html">Names of Allah</a></h3>
                                <span><a href="#">Media</a>, <a href="#">Icons</a></span>
                            </div>
                        </article>

                        <article class="portfolio-item pf-illustrations">
                            <div class="portfolio-audio">
								<audio preload="auto" id="id12" controls="controls" src="client/audio/MuslimPrayer-NoExcuseToMissIt.mp3"></audio>								
                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single.html">No Excuse to Miss Prayer</a></h3>
                                <span><a href="#">Illustrations</a></span>
                            </div>
                        </article>

                        <article class="portfolio-item pf-graphics pf-uielements">
                            <div class="portfolio-audio">
								<audio preload="auto" id="id12" controls="controls" src="client/audio/OutlandishSamiYusuf.mp3"></audio>								
                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single-video.html">Outlandish Sami Yusuf</a></h3>
                                <span><a href="#">Graphics</a>, <a href="#">UI Elements</a></span>
                            </div>
                        </article>

                        <article class="portfolio-item pf-icons pf-illustrations">
                            <div class="portfolio-audio">
								<audio preload="auto" id="id12" controls="controls" src="client/audio/proud-to-be-a-muslim.mp3"></audio>								
                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single-video.html">Proud to be Muslim</a></h3>
                                <span><a href="#">Graphics</a>, <a href="#">UI Elements</a></span>
                            </div>
                        </article>                
                
                </div>     
                
                

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

        <!-- Footer
        ============================================= -->
        <footer id="footer" class="dark">

            <div class="container">

                <!-- Footer Widgets
                ============================================= -->
                <div class="footer-widgets-wrap clearfix">
                	
                	<div class="col_one_third">
                	
                        

                            <div class="widget clearfix">

                                <img src="images/alhuda/logo-footer.png" alt="" class="footer-logo">

                                <p>Welcome to the Sunday Islamic School at <strong>Masjid Al-Huda</strong>. Located in Schaumburg, Illinois, the school provides education in Islamic studies to students from Pre-Kindergarten through the 10th Grade. </p>

                            </div>

                                      	
                	
                	</div>

                    <div class="col_one_third">                     

                            <div class="widget clearfix">
                                <h4>Contact Us</h4>

                                <div style="background: url('images/world-map.png') no-repeat center center; background-size: 100%;">
                                    <address>
                                        <strong>Masjid AlHuda</strong><br>
                                        1081 Irving Park Road<br>
                                        Schaumburg, IL 60193<br>
                                    </address>
                                    <abbr title="Phone Number"><strong>Phone:</strong></abbr> (630) 529-1786<br>                                   
                                    <abbr title="Email Address"><strong>Email:</strong></abbr> masjid@masjidalhuda.org
                                </div>
                            </div>

                    </div>

                    <div class="col_one_third col_last">

                        <div class="widget subscribe-widget clearfix">
                            <h5><strong>Subscribe</strong> to Our Newsletter to get Important News &amp; Updates</h5>
                            <div id="widget-subscribe-form-result" data-notify-type="success" data-notify-msg=""></div>
                            <form id="widget-subscribe-form" action="include/subscribe.php" role="form" method="post" class="nobottommargin">
                                <div class="input-group divcenter">
                                    <span class="input-group-addon"><i class="icon-email2"></i></span>
                                    <input type="email" id="widget-subscribe-form-email" name="widget-subscribe-form-email" class="form-control required email" placeholder="Enter your Email">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit">Subscribe</button>
                                    </span>
                                </div>
                            </form>
                            <script type="text/javascript">
                                $("#widget-subscribe-form").validate({
                                    submitHandler: function(form) {
                                        $(form).find('.input-group-addon').find('.icon-email2').removeClass('icon-email2').addClass('icon-line-loader icon-spin');
                                        $(form).ajaxSubmit({
                                            target: '#widget-subscribe-form-result',
                                            success: function() {
                                                $(form).find('.input-group-addon').find('.icon-line-loader').removeClass('icon-line-loader icon-spin').addClass('icon-email2');
                                                $('#widget-subscribe-form').find('.form-control').val('');
                                                $('#widget-subscribe-form-result').attr('data-notify-msg', $('#widget-subscribe-form-result').html()).html('');
                                                SEMICOLON.widget.notifications($('#widget-subscribe-form-result'));
                                            }
                                        });
                                    }
                                });
                            </script>
                        </div>

                        <div class="widget clearfix" style="margin-bottom: -20px;">

                            <div class="row">

                                <div class="col-md-6 clearfix bottommargin-sm">
                                    <a href="#" class="social-icon si-dark si-colored si-facebook nobottommargin" style="margin-right: 10px;">
                                        <i class="icon-facebook"></i>
                                        <i class="icon-facebook"></i>
                                    </a>
                                    <a href="#"><small style="display: block; margin-top: 3px;"><strong>Like us</strong><br>on Facebook</small></a>
                                </div>
                     

                            </div>

                        </div>

                    </div>

                </div><!-- .footer-widgets-wrap end -->

            </div>

            <!-- Copyrights
            ============================================= -->
            <div id="copyrights">

                <div class="container clearfix">

                    <div class="col_half">
                        Copyrights &copy; 2014 All Rights Reserved by Masjid Al Huda.<br>
                        <div class="copyright-links"><a href="#">Terms of Use</a> / <a href="#">Privacy Policy</a></div>
                    </div>

                    <div class="col_half col_last tright">
                        <div class="fright clearfix">
                            <a href="#" class="social-icon si-small si-borderless si-facebook">
                                <i class="icon-facebook"></i>
                                <i class="icon-facebook"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-gplus">
                                <i class="icon-gplus"></i>
                                <i class="icon-gplus"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-pinterest">
                                <i class="icon-pinterest"></i>
                                <i class="icon-pinterest"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-vimeo">
                                <i class="icon-vimeo"></i>
                                <i class="icon-vimeo"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-github">
                                <i class="icon-github"></i>
                                <i class="icon-github"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-yahoo">
                                <i class="icon-yahoo"></i>
                                <i class="icon-yahoo"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-linkedin">
                                <i class="icon-linkedin"></i>
                                <i class="icon-linkedin"></i>
                            </a>
                        </div>

                        <div class="clear"></div>

                        <i class="icon-envelope2"></i> masjid@masjidalhuda.org <span class="middot">&middot;</span> <i class="icon-headphones"></i> (630) 529-1786
                    </div>

                </div>

            </div><!-- #copyrights end -->

        </footer><!-- #footer end -->

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="js/functions.js"></script>

</body>
</html>